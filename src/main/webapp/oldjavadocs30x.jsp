<table class="api-matrix">
<% 
String[] versios30x = {"","3.0.0","3.0.1","3.0.2","3.0.3","3.0.4","3.0.5","3.0.6"};
for(int i=0;i<versios30x.length;i++){%>
<tr>
<%for(int j=0;j<versios30x.length;j++){
    if(i==0){//header%>
<th><%if(j!=0){%><a href="/oldjavadocs/<%=versios30x[j]%>/index.html"><%=versios30x[j]%></a><%}%></th>
  <%}else{// diffs
     if(j==0){%>
       <th><a href="/oldjavadocs/<%=versios30x[i]%>/index.html"><%=versios30x[i]%></a></th>
   <%}else{
       if(j > i){%>
       <td><a href="/oldjavadocs/<%=versios30x[i]%>-<%=versios30x[j]%>/changes.html">diff</a></td>
       <%}else{%><td>-</td><%}%>
   <%}%>
  <%}%>
<%}%>
  </tr>
<%}%>
</table>