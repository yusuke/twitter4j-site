<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@attribute name="name" required="true"%>
<%@attribute name="title" required="true"%>
<h2><a name="<%=name%>"><%=title%></a></h2>
<script>
{
  var index;
  if(!submenu){
    submenu = new Array(0);
    index = 0;
  }else{
    index = submenu.length;
  }
  submenu[index] = new Array();

  submenu[index]["name"] = "<%=name%>";
  submenu[index]["title"] = "<%=title%>";
}
</script>
<p>
  <jsp:doBody/>
</p>