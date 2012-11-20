<table class="api-matrix">
<% 
String[] versios21x = {"","2.1.0","2.1.1","2.1.2","2.1.3","2.1.4","2.1.5","2.1.6","2.1.7","2.1.8","2.1.9","2.1.10","2.1.11","2.1.12"};
for(int i=0;i<versios21x.length;i++){%>
<tr>
<%for(int j=0;j<versios21x.length;j++){
    if(i==0){//header%>
<th><%if(j!=0){%><a href="./oldjavadocs/<%=versios21x[j]%>/index.html"><%=versios21x[j]%></a><%}%></th>
  <%}else{// diffs
     if(j==0){%>
       <th><a href="./oldjavadocs/<%=versios21x[i]%>/index.html"><%=versios21x[i]%></a></th>
   <%}else{
       if(j > i){%>
       <td><a href="./oldjavadocs/<%=versios21x[i]%>-<%=versios21x[j]%>/changes.html">diff</a></td>
       <%}else{%><td>-</td><%}%>
   <%}%>
  <%}%>
<%}%>
  </tr>
<%}%>
</table>