<%@tag pageEncoding="UTF-8"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@attribute name="name" required="true"%>
<%@attribute name="title" required="true"%>
<li class="numberedlist"><h3><a name="<%=name%>"><%=title%></a></h3></li>
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
