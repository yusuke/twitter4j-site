<table class="api-matrix">
<% 
String[] versions = {"2.0.1","2.0.2","2.0.3","2.0.4","2.0.5","2.0.6","2.0.7","2.0.8","2.0.9","2.0.10"};
for(int i=0;i<versions.length;i++){%>
<tr>
<%for(int j=0;j<versions.length;j++){
    if(i==0){//header%>
<th><a href="./oldjavadocs/<%=versions[j]%>/index.html"><%=versions[j]%></a></th>
  <%}else{// diffs
     if(j==0){%>
       <th><a href="./oldjavadocs/<%=versions[i]%>/index.html"><%=versions[i]%></a></th>
   <%}else{
       if(j > i){%>
       <td><a href="./oldjavadocs/<%=versions[i]%>-<%=versions[j]%>/changes.html">jdiff</a></td>
       <%}else{%><td>-</td><%}%>
   <%}%>
  <%}%>
<%}%>
  </tr>
<%}%>
</table>