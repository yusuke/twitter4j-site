package org.apache.jsp.tag.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class left_tag
    extends javax.servlet.jsp.tagext.SimpleTagSupport
    implements org.apache.jasper.runtime.JspSourceDependent {


  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

    try {
      out.write("<div style=\"text-align:center\">$[ja:<a id=\"lang-link\" href=\"../en/index.html\">English</a> | Japanese]$[en:English | <a id=\"lang-link\" href=\"../ja/index.html\">Japanese</a>]\n");
      out.write("</div><br>\n");
      out.write("<script>\n");
      out.write("var currentPage = location.href.substring(location.href.lastIndexOf(\"/\") + 1);\n");
      out.write("$[ja:document.getElementById(\"lang-link\").href=\"../en/\"+ currentPage;]\n");
      out.write("$[en:document.getElementById(\"lang-link\").href=\"../ja/\"+ currentPage;]\n");
      out.write("if(-1 != currentPage.indexOf(\"#\")){\n");
      out.write("  currentPage = currentPage.substring(0,currentPage.indexOf(\"#\"));\n");
      out.write("}\n");
      out.write("function setVisibility(id,page){\n");
      out.write("  if(document.getElementById(id)){\n");
      out.write("   document.getElementById(id).style.display = (-1 != currentPage.indexOf(page)) ? \"block\" : \"none\";\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<ul>\n");
      out.write("<li><a href=\"index.html#introduction\" onclick=\"return scrollGracefully(this.href)\">$[ja:トップ]$[en:Main]</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"index.html\"></ol>\n");
      out.write("<li><a href=\"code-examples.html\">$[ja:コード例]$[en:Code Examples]</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"code-examples.html\"></ol>\n");
      out.write("<li><a href=\"configuration.html\">$[ja:設定]$[en:Configuration]</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"configuration.html\"></ol>\n");
      out.write("<li><a href=\"./javadoc.html\">JavaDoc</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"javadoc.html\"></ol>\n");
      out.write("<li><a href=\"api-support.html\">$[ja:サポートしているAPI]$[en:API Support matrix]</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"api-support.html\"></ol>\n");
      out.write("<li><a href=\"versions.html\">$[ja:バージョン]$[en:Versions]</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"versions.html\"></ol>\n");
      out.write("<li><a href=\"development.html\">$[ja:開発]$[en:Development]</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"development.html\"></ol>\n");
      out.write("<li><a href=\"faq.html\">$[ja:よくある質問]$[en:FAQ]</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"faq.html\"></ol>\n");
      out.write("<li><a href=\"./powered-by.html\">Powered By Twitter4J</a></li>\n");
      out.write(" <ol style=\"display:none\" id=\"powered-by.html\"></ol>\n");
      out.write("</ul>\n");
      out.write("<center>\n");
      out.write("    <br>\n");
      out.write("    <!-- tweet button-->\n");
      out.write("    <a href=\"https://twitter.com/t4j_news\" class=\"twitter-follow-button\" data-show-count=\"false\">Follow @t4j_news</a>\n");
      out.write("    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=\"//platform.twitter.com/widgets.js\";fjs.parentNode.insertBefore(js,fjs);}}(document,\"script\",\"twitter-wjs\");</script>\n");
      out.write("    <!-- like button-->\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <div id=\"fb-root\"></div>\n");
      out.write("    <script>(function(d, s, id) {\n");
      out.write("      var js, fjs = d.getElementsByTagName(s)[0];\n");
      out.write("      if (d.getElementById(id)) return;\n");
      out.write("      js = d.createElement(s); js.id = id;\n");
      out.write("      js.src = \"//connect.facebook.net/ja_JP/all.js#xfbml=1&appId=111515485621450\";\n");
      out.write("      fjs.parentNode.insertBefore(js, fjs);\n");
      out.write("    }(document, 'script', 'facebook-jssdk'));</script>\n");
      out.write("    <div class=\"fb-like\" data-href=\"http://twitter4j.org/\" data-send=\"false\" data-layout=\"button_count\" data-width=\"100\" data-show-faces=\"false\"></div>\n");
      out.write("</center>\n");
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
}
