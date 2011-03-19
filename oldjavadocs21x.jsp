<table class="api-matrix">
<% 
String[] versions = {"","2.1.0","2.1.1","2.1.2","2.1.3","2.1.4","2.1.5","2.1.6","2.1.7","2.1.8","2.1.9","2.1.10","2.1.11","2.1.12"};
for(int i=0;i<versions.length;i++){%>
<tr>
<%for(int j=0;j<versions.length;j++){
    if(i==0){//header%>
<th><%if(j!=0){%><a href="./oldjavadocs/<%=versions[j]%>/index.html"><%=versions[j]%></a><%}%></th>
  <%}else{// diffs
     if(j==0){%>
       <th><a href="./oldjavadocs/<%=versions[i]%>/index.html"><%=versions[i]%></a></th>
   <%}else{
       if(j > i){%>
       <td><a href="./oldjavadocs/<%=versions[i]%>-<%=versions[j]%>/changes.html">diff</a></td>
       <%}else{%><td>-</td><%}%>
   <%}%>
  <%}%>
<%}%>
  </tr>
<%}%>
</table>