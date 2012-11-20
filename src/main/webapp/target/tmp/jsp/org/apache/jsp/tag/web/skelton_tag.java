package org.apache.jsp.tag.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class skelton_tag
    extends javax.servlet.jsp.tagext.SimpleTagSupport
    implements org.apache.jasper.runtime.JspSourceDependent {


  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/WEB-INF/tags/left.tag");
  }

  private JspContext jspContext;
  private java.io.Writer _jspx_sout;
  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public void setJspContext(JspContext ctx) {
    super.setJspContext(ctx);
    java.util.ArrayList<String> _jspx_nested = null;
    java.util.ArrayList<String> _jspx_at_begin = null;
    java.util.ArrayList<String> _jspx_at_end = null;
    this.jspContext = new org.apache.jasper.runtime.JspContextWrapper(ctx, _jspx_nested, _jspx_at_begin, _jspx_at_end, null);
  }

  public JspContext getJspContext() {
    return this.jspContext;
  }
  private java.lang.String title;

  public java.lang.String getTitle() {
    return this.title;
  }

  public void setTitle(java.lang.String title) {
    this.title = title;
  }

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void doTag() throws JspException, java.io.IOException {
    PageContext _jspx_page_context = (PageContext)jspContext;
    HttpServletRequest request = (HttpServletRequest) _jspx_page_context.getRequest();
    HttpServletResponse response = (HttpServletResponse) _jspx_page_context.getResponse();
    HttpSession session = _jspx_page_context.getSession();
    ServletContext application = _jspx_page_context.getServletContext();
    ServletConfig config = _jspx_page_context.getServletConfig();
    JspWriter out = jspContext.getOut();
    if( getTitle() != null ) {
      _jspx_page_context.setAttribute("title", getTitle());
}

    try {
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("$[ja:<head xml:lang=\"ja\" lang=\"ja\">]$[en:<head xml:lang=\"en\" lang=\"en\">]\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <meta http-equiv=\"Content-Language\" content=\"$[ja:ja]$[en:en]\">\n");
      out.write("    <meta name=\"verify-v1\" content=\"YFpQGqxuw7kZYOQ2M/HWLOJEjRhLTyoH4sIP2sQf1wA=\"/>\n");
      out.write("    <link rel=\"shortcut icon\" href=\"http://twitter4j.org/$[ja:ja]$[en:en]/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("    <title>");
      out.print(title);
      out.write("</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("    <link href=\"http://netdna.bootstrapcdn.com/twitter-bootstrap/2.0.4/css/bootstrap-combined.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"lightbox/lightbox.css\" type=\"text/css\">\n");
      out.write("    <script type=\"text/javascript\" src=\"lightbox/spica.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"lightbox/lightbox_plus.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/gracefulscroll.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<script>\n");
      out.write("    var submenu;\n");
      out.write("</script>\n");
      out.write("<div class=\"center container\" id=\"center\">\n");
      out.write("    <a name=\"top\"></a>\n");
      out.write("    <div class=\"row\">\n");
      out.write("\n");
      out.write("        <div class=\"span3 left\">\n");
      out.write("            ");
      if (_jspx_meth_tag_left_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"span9 content\" id=\"content\"><br>\n");
      out.write("            <a href=\"./index.html\"><img src=\"./images/twitter4j-logo.png\"></a>\n");
      out.write("            <center>\n");
      out.write("                <include>adsense468x15.html</include>\n");
      out.write("                <br>\n");
      out.write("                <include>adsense468x60.html</include>\n");
      out.write("            </center>\n");
      out.write("            ");
      ((org.apache.jasper.runtime.JspContextWrapper) this.jspContext).syncBeforeInvoke();
      _jspx_sout = null;
      if (getJspBody() != null)
        getJspBody().invoke(_jspx_sout);
      out.write("\n");
      out.write("            <center>\n");
      out.write("                <include>adsense468x60.html</include>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<include>urchin.html</include>\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"http://netdna.bootstrapcdn.com/twitter-bootstrap/2.0.4/js/bootstrap.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("    if (submenu) {\n");
      out.write("        var h = \"\";\n");
      out.write("        for (var i = 0; i < submenu.length; i++) {\n");
      out.write("            h = h + \"<li><a href='\" + currentPage + \"#\" + submenu[i][\"name\"] + \"' onclick='return scrollGracefully(this.href)'>\" + submenu[i][\"title\"] + \"</a></li>\";\n");
      out.write("        }\n");
      out.write("        if (document.getElementById(currentPage)) {\n");
      out.write("            document.getElementById(currentPage).style.display = (-1 != currentPage.indexOf(currentPage)) ? \"block\" : \"none\";\n");
      out.write("            document.getElementById(currentPage).innerHTML = h;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch( Throwable t ) {
      if( t instanceof SkipPageException )
          throw (SkipPageException) t;
      if( t instanceof java.io.IOException )
          throw (java.io.IOException) t;
      if( t instanceof IllegalStateException )
          throw (IllegalStateException) t;
      if( t instanceof JspException )
          throw (JspException) t;
      throw new JspException(t);
    } finally {
      ((org.apache.jasper.runtime.JspContextWrapper) jspContext).syncEndTagFile();
    }
  }

  private boolean _jspx_meth_tag_left_0(PageContext _jspx_page_context)
          throws Throwable {
    JspWriter out = _jspx_page_context.getOut();
    //  tag:left
    org.apache.jsp.tag.web.left_tag _jspx_th_tag_left_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.left_tag.class) : new org.apache.jsp.tag.web.left_tag();
    _jspx_th_tag_left_0.setJspContext(_jspx_page_context);
    _jspx_th_tag_left_0.doTag();
    return false;
  }
}
