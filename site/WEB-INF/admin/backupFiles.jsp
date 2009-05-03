<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.io.File,java.util.Date,java.text.SimpleDateFormat"%>
<%File[] files = (File[])request.getAttribute("backupfiles");
if(null != files){
%><select onchange="top.restoreFromBackup(this.value)">
<%
for(int i=0;i<files.length;i++){
  if(0 == i){%>
<option value="<%=files[i].getName()%>">$[en:Last modified:]$[ja:最終更新:] $[en:<%=fmtEn.format(new Date(files[i].lastModified()))%>]$[ja:<%=fmtJa.format(new Date(files[i].lastModified()))%>]<%if(i==0){%> <%=(files.length-1)%>$[en: backup file(s)]$[ja:個のバックアップ]<%}%></option>
<%}else{%>
<option value="<%=files[i].getName()%>">$[en:Restore from backup:]$[ja:バックアップから読みこみ:] $[en:<%=fmtEn.format(new Date(files[i].lastModified()))%>]$[ja:<%=fmtJa.format(new Date(files[i].lastModified()))%>]</option>
<%}
}%>
</select>
<%}%>
<%!
 SimpleDateFormat fmtEn = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
 SimpleDateFormat fmtJa = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
%>