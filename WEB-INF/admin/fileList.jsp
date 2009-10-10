<%@ page language="java" contentType="text/html; charset=UTF-8"
   import="java.io.File,java.util.regex.Matcher,java.util.regex.Pattern"%><%
     //     response.setContentType("text/html; charset="+application.getInitParameter("encoding"));
     String path = (String)request.getAttribute("path");
     File[] files = (File[])request.getAttribute("files");%>
<form>
  <input type="hidden" id="currentPath" name="currentPath" value="<%=path%>"/>
<select onchange="parent.listFiles(this.value)">
<%
 if(!"/".equals(path)){
 String currentPath = path;
while(currentPath.length() > 0){
int lastSlash = currentPath.lastIndexOf("/");%>
<option value="<%=currentPath%>"><%=currentPath%></option>
<% currentPath = currentPath.substring(0,lastSlash);
}}%>
<option value="/">/</option>
</select>
<input type="image" onclick="parent.addDocument();return false;" src="./images/doc_add.gif"/>
<input type="image" onclick="parent.addFolder();return false;" src="./images/folder_add.gif"/>
</form><table width="100%" cellspacing="0">
<%if(!"/".equals(path)){
   //draw parent directory
   String parentPath = path.substring(0,path.lastIndexOf("/"));
   if("".equals(parentPath)){
     parentPath = "/";
   }
%>
 <tr>
   <td class="even" colspan="2">
    <a href="javascript:parent.listFiles('<%=parentPath%>')"><img src="./images/folder_parent.gif"/> ..</a>
   </td>
 </tr>
<%}%>   
  <%for(int i=0;i<files.length;i++){%>
  <tr class="<%=(i%2==0) ? "odd":"even"%>">
    <td width="100%">
    <%if(files[i].isDirectory()){%>
    <a href="javascript:parent.listFiles('<%=("/".equals(path)? "/":path+"/")+files[i].getName()%>')"><img src="./images/folder.gif"/> <%=files[i].getName()%></a>
    <%} else{%>
      <a href="javascript:parent.openFile('<%=("/".equals(path)? "/":path+"/")+files[i].getName()%>')"><img src="./images/<%=getImageName(files[i])%>"/> <%=files[i].getName()%></a>
    <%}%>
    </td>
    <td><a href="<%=request.getContextPath()+(("/".equals(path)? "/":path+"/")+files[i].getName())%>" target="_blank"><img src="./images/preview.gif"/></a>

      <div id='<%=("/".equals(path)? "/":path+"/")+files[i].getName()%>'></div>      
    </td>
  </tr>
  <%}%>
</table>
<%!
  Pattern webFiles = Pattern.compile(".*(html|htm|asp|aspx|jsp|jspx)$");
  Pattern textFiles = Pattern.compile(".*(txt|text|css|js|css|jnlp|xml|java|cs|py|c|cpp|MF)$");
  Pattern imageFiles = Pattern.compile(".*(png|jpg|jpeg|jp2|psd|pict|tif|tiff|gif|bmp|mag|maki|sgi|tga|ico)$");
  String getImageName(File file){
    String fileName = file.getName();
    if(imageFiles.matcher(fileName).matches()){
      return "pict.png";
    }else if(webFiles.matcher(fileName).matches()){
      return "webDoc.gif";
    }else if(textFiles.matcher(fileName).matches()){
      return "doc.gif";
    }else{
      return "unknown.gif";
    }
  }
%>