<table class="api-matrix">
<% 
String[] versios22x = {"","2.2.0","2.2.1","2.2.2","2.2.3","2.2.4","2.2.5","2.2.6"};
for(int i=0;i<versios22x.length;i++){%>
<tr>
<%for(int j=0;j<versios22x.length;j++){
    if(i==0){//header%>
<th><%if(j!=0){%><a href="./oldjavadocs/<%=versios22x[j]%>/index.html"><%=versios22x[j]%></a><%}%></th>
  <%}else{// diffs
     if(j==0){%>
       <th><a href="./oldjavadocs/<%=versios22x[i]%>/index.html"><%=versios22x[i]%></a></th>
   <%}else{
       if(j > i){%>
       <td><a href="./oldjavadocs/<%=versios22x[i]%>-<%=versios22x[j]%>/changes.html">diff</a></td>
       <%}else{%><td>-</td><%}%>
   <%}%>
  <%}%>
<%}%>
  </tr>
<%}%>
</table>