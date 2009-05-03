function Debug(){
  this.setEnabled = setEnabled;
  this.enabled = false;
  this.log = log;

}
function setEnabled(enabled){
  this.enabled = enabled;
  if(this.enabled){
    this.debugWindow = window.open("about:blank");
    this.debugWindow.document.open();
  }
}
function log(msg){
  if(this.enabled){
    if(this.debugWindow){
      this.debugWindow.document.write(msg+"<br>");
    }
  }
}