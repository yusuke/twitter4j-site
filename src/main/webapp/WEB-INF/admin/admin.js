var textArea;
var buttonSave;
var fileList;
var fileName;
var previewPane;
var previewMehtod;
var openFileName;
var message;
var currentPath;
var debug;
var backup;

var contextPath = getContextPath();
  debug = new Debug();
//    debug.setEnabled(true);
  previewPane = top.frames[2];
function initToolBar(toolbar){
    //initialize editor toolbar
    buttonSave = toolbar.getElementById("buttonSave");
    openFileName = toolbar.getElementById("openFileName");
    message = toolbar.getElementById("message");
    backup = toolbar.getElementById("backup");
}
function initEditor(editor){
    //initialize editor textarea
    textArea = editor.getElementById("textEditorPane");
    fileName = editor.getElementById("fileName");
}
function initExplorer(explorer){
    //initialize file pane
    fileList = explorer.getElementById("fileList");
    listFiles("/");
}
var lastText;
var originalText;
var dirty = false;
var ontimeout;
function textChanged(src){
  if(lastText != src){
    setDirty(originalText != src);
    lastText = src;
    clearTimeout(ontimeout);
    ontimeout = setTimeout(previewMethod,500);
  }
}
function previewHtml(){
  debug.log("previewHTML");
  if(textArea.value){
//    new Ajax().post(contextPath+fileName.value,fillPreviewPane,"content",textArea.value);
    ajax.post("getFileDecorated.ajax",fillPreviewPane,"path",contextPath+fileName.value,"content",textArea.value);
  }else{
    fillPreviewPane("");
  }
}
function reportError(msg){
  fillPreviewPane(msg);
}
var ajax = new Ajax(reportError);
function fillPreviewPane(html){
//alert("fillPreviewPane"+html);
  var doc = top.frames[2].document;
  doc.innerHTML="";
  doc.open();
  doc.write('&nbsp;<base href="'+contextPath+fileName.value+'">');
  doc.write(html);
  doc.close(); 
/*  var head = doc.getElementsByTagName("head");
  if(head){
    var base = doc.createElement("base");
    base.setAttribute("href",contextPath+fileName.value);
    head[0].appendChild(base);
  }*/
}
function dummy(){}
function save(){
  if(dirty){
    ajax.post("save.ajax",saveDone,"path",fileName.value,"content",textArea.value);
  }
}
function saveDone(){
  setDirty(false);
  originalText = textArea.value;
  showMessage("Saved.");
  listFiles(currentPath.value);
  getBackupFiles();
}
function restoreFromBackup(file){
  if(file && "" != file){
    ajax.get("getFile.ajax?path="+currentPath.value+file,gotBackup);
  }
}
function gotBackup(html){
  fillTextArea(html);
  textChanged(html);
}
var htmlFiles = new Array("html","htm","asp","aspx","jsp","jspx");
var textFiles = new Array("txt","text","css","js","css","jnlp","xml","java","cs","py","c","cpp","MF");
var imageFiles = new Array("png","jpg","jpeg","jp2","psd","pict","tif","tiff","gif","bmp"
,"mag","maki","sgi","tga","ico");
function closeFile(){
  if(dirty &&!confirm("File has been modified and unsaved. Proceed anyway?")){
    return false;
  }else{
    fileName.value = "";
    textArea.value = "";
    setDirty(false);
    textArea.disabled=true;
    top.frames[2].location.href="about:blank";
    return true;
  }
}
function openFile(path){
  if(closeFile()){
    setOpened(path);
    for(var i=0;i<htmlFiles.length;i++){
      if(path.match("."+htmlFiles[i]+"$")){
        openHtml(path);
        return;
      }
    }
    for(var i=0;i<textFiles.length;i++){
      if(path.match("."+textFiles[i]+"$")){
        openText(path);
        return;
      }
    }
    for(var i=0;i<imageFiles.length;i++){
      if(path.match("."+imageFiles[i]+"$")){
        openImage(path);
        return;
      }
    }
    openUknownDocument(path);
  }
}
function openHtml(path){
  ajax.get("getFile.ajax?path="+path,gotHtml);
  textArea.disabled=false;
  previewMethod=previewHtml;
}
function gotHtml(html){
  fillTextArea(html);
  ajax.post("getFileDecorated.ajax",fillPreviewPane,"path",contextPath+fileName.value,"content",html);
  getBackupFiles();
}
function getBackupFiles(){
  ajax.get("getBackupFiles.action?path="+fileName.value,gotBackupFiles);
}
function gotBackupFiles(html){
  backup.innerHTML = html;
}
function openText(path){
  top.frames[2].location.href="about:blank";
  ajax.get("getFile.ajax?path="+path,fillTextArea);
  previewMethod=dummy;
  textArea.disabled=false;
  getBackupFiles();
}
function openImage(path){
  fillPreviewPane('<html><body style="width: 90%;height: 90%;background-image: url(\''+contextPath+path+'\');background-position: center center;background-repeat: no-repeat;"/></html>');
  previewMethod=dummy;
  textArea.value = "";
}
function openUnkownDocument(path){
  top.frames[2].location.href="about:blank";
  top.frames[2].location.href=contextPath+path;
}
function setOpened(name){
  fileName.value=name;
  setDirty(false);
}
function addDocument(){
  if(closeFile()){
    var fileName = prompt("Enter file name");
    if(fileName){
      var newFilePath;
      if(currentPath.value == "/"){
        newFilePath = currentPath.value+fileName;
      }else{
        newFilePath = currentPath.value+"/"+fileName;
      }
      setOpened(newFilePath);
      textArea.disabled=false;
      previewMethod=previewHtml;
      fillTextArea("<html><body></body></html>");
      setDirty(true);
      getBackupFiles();
    }
  }
}
function addFolder(){
    var fileName = prompt("Enter folder name");
    if(fileName){
      var newFilePath;
      if(currentPath.value == "/"){
        newFilePath = currentPath.value+fileName;
      }else{
        newFilePath = currentPath.value+"/"+fileName;
      }
      ajax.get("addFolder.ajax?path="+newFilePath,addFolderDone);
    }
}
function addFolderDone(){
  listFiles(currentPath.value);
}
function showMessage(msg){
  if(arguments.length == 1){
    message.innerHTML=msg;
    setTimeout("showMessage()",2000);
  }else{
    message.innerHTML="";
  }
}
function setDirty(newDirty){
    dirty = newDirty;
    if(dirty){
      openFileName.innerHTML = fileName.value+"*";
      buttonSave.disabled = false;
    }else{
      openFileName.innerHTML = fileName.value;
      buttonSave.disabled = "disabled";
    }
}
function listFiles(path){
  ajax.get("fileList.action?path="+path,loadFileList);
}
function loadFileList(str){
  fileList.innerHTML=str;
  currentPath = top.frames[0].document.getElementById("currentPath");
}
function fillTextArea(str){
  textArea.value=str;
  textArea.disabled=false;
  lastText = textArea.value;
  originalText = textArea.value;
}