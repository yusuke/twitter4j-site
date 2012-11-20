<%
    //out.print(request.getServletPath());
    String path = request.getServletPath();
    System.out.println("servletPath::" + path);
    System.out.println("startswith:"+(path.startsWith("/en/") || path.startsWith("/ja/")));
    if (path.startsWith("/en/") || path.startsWith("/ja/")) {
        if (!path.contains("javadoc/") && !path.contains("oldjavadocs/") && path.endsWith(".html")) {
            path = path.substring(3, path.lastIndexOf(".html")) + ".jsp";
        } else {
            path = path.substring(3);
        }
    }
    System.out.println("forwarding:" + path);
    application.getRequestDispatcher(path).forward(request, response);
//application.getRequestDispatcher("/supported-api.jsp").forward(request,response);

%>