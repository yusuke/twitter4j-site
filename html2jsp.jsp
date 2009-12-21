<%//out.print(request.getServletPath());
String path = request.getServletPath();
if(!path.contains("javadoc/") &&!path.contains("oldjavadocs/")&& path.endsWith(".html") && (path.startsWith("/en/") || path.startsWith("/jp/"))){
  path = path.substring(3,path.lastIndexOf(".html"))+".jsp";
}
System.out.println("forwarding:"+path);
application.getRequestDispatcher(path).forward(request,response);
//application.getRequestDispatcher("/supported-api.jsp").forward(request,response);

%>
