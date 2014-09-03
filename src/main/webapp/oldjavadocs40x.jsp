<table class="api-matrix">
<% 
String[] versios40x = {"","4.0.0","4.0.1","4.0.2"};
for(int i=0;i<versios40x.length;i++){%>
<tr>
<%for(int j=0;j<versios40x.length;j++){
    if(i==0){//header%>
<th><%if(j!=0){%><a href="/oldjavadocs/<%=versios40x[j]%>/index.html"><%=versios40x[j]%></a><%}%></th>
  <%}else{// diffs
     if(j==0){%>
       <th><a href="/oldjavadocs/<%=versios40x[i]%>/index.html"><%=versios40x[i]%></a></th>
   <%}else{
       if(j > i){%>
       <td><a href="/oldjavadocs/<%=versios40x[i]%>-<%=versios40x[j]%>/changes.html">diff</a></td>
       <%}else{%><td>-</td><%}%>
   <%}%>
  <%}%>
<%}%>
  </tr>
<%}%>
</table>