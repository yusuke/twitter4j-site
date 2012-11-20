package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class faq_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/WEB-INF/tags/skelton.tag");
    _jspx_dependants.add("/WEB-INF/tags/left.tag");
    _jspx_dependants.add("/WEB-INF/tags/h3-num.tag");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      if (_jspx_meth_tag_skelton_0(_jspx_page_context))
        return;
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_tag_skelton_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:skelton
    org.apache.jsp.tag.web.skelton_tag _jspx_th_tag_skelton_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.skelton_tag.class) : new org.apache.jsp.tag.web.skelton_tag();
    _jspx_th_tag_skelton_0.setJspContext(_jspx_page_context);
    _jspx_th_tag_skelton_0.setTitle("Twitter4J - $[ja:よくある質問]$[en:FAQ]");
    _jspx_th_tag_skelton_0.setJspBody(new faq_jspHelper( 0, _jspx_page_context, _jspx_th_tag_skelton_0, null));
    _jspx_th_tag_skelton_0.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h3$1num_0(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h3-num
    org.apache.jsp.tag.web.h3_002dnum_tag _jspx_th_tag_h3$1num_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h3_002dnum_tag.class) : new org.apache.jsp.tag.web.h3_002dnum_tag();
    _jspx_th_tag_h3$1num_0.setJspContext(_jspx_page_context);
    _jspx_th_tag_h3$1num_0.setParent(_jspx_parent);
    _jspx_th_tag_h3$1num_0.setName("appname");
    _jspx_th_tag_h3$1num_0.setTitle("$[ja:twitter.com で from Twitter4J のかわりに自分のアプリケーション名を表示させるにはどうすれば良いですか？]$[en:How do I get “from Twitter4J” appended to updates sent from my application?]");
    _jspx_th_tag_h3$1num_0.setJspBody(new faq_jspHelper( 1, _jspx_page_context, _jspx_th_tag_h3$1num_0, null));
    _jspx_th_tag_h3$1num_0.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h3$1num_1(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h3-num
    org.apache.jsp.tag.web.h3_002dnum_tag _jspx_th_tag_h3$1num_1 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h3_002dnum_tag.class) : new org.apache.jsp.tag.web.h3_002dnum_tag();
    _jspx_th_tag_h3$1num_1.setJspContext(_jspx_page_context);
    _jspx_th_tag_h3$1num_1.setParent(_jspx_parent);
    _jspx_th_tag_h3$1num_1.setName("threadsafety");
    _jspx_th_tag_h3$1num_1.setTitle("$[ja:Twitter4J はスレッドセーフですか？]$[en:Is Twitter4J tread-safe?]");
    _jspx_th_tag_h3$1num_1.setJspBody(new faq_jspHelper( 2, _jspx_page_context, _jspx_th_tag_h3$1num_1, null));
    _jspx_th_tag_h3$1num_1.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h3$1num_2(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h3-num
    org.apache.jsp.tag.web.h3_002dnum_tag _jspx_th_tag_h3$1num_2 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h3_002dnum_tag.class) : new org.apache.jsp.tag.web.h3_002dnum_tag();
    _jspx_th_tag_h3$1num_2.setJspContext(_jspx_page_context);
    _jspx_th_tag_h3$1num_2.setParent(_jspx_parent);
    _jspx_th_tag_h3$1num_2.setName("bureport");
    _jspx_th_tag_h3$1num_2.setTitle("$[ja:バグはどこにレポートすれば良いですか？]$[en:Where to report bugs?]");
    _jspx_th_tag_h3$1num_2.setJspBody(new faq_jspHelper( 3, _jspx_page_context, _jspx_th_tag_h3$1num_2, null));
    _jspx_th_tag_h3$1num_2.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h3$1num_3(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h3-num
    org.apache.jsp.tag.web.h3_002dnum_tag _jspx_th_tag_h3$1num_3 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h3_002dnum_tag.class) : new org.apache.jsp.tag.web.h3_002dnum_tag();
    _jspx_th_tag_h3$1num_3.setJspContext(_jspx_page_context);
    _jspx_th_tag_h3$1num_3.setParent(_jspx_parent);
    _jspx_th_tag_h3$1num_3.setName("proxy");
    _jspx_th_tag_h3$1num_3.setTitle("$[ja:プロキシサーバはどうやって設定しますか？]$[en:How do I configure proxy server for Twitter4J?]");
    _jspx_th_tag_h3$1num_3.setJspBody(new faq_jspHelper( 4, _jspx_page_context, _jspx_th_tag_h3$1num_3, null));
    _jspx_th_tag_h3$1num_3.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h3$1num_4(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h3-num
    org.apache.jsp.tag.web.h3_002dnum_tag _jspx_th_tag_h3$1num_4 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h3_002dnum_tag.class) : new org.apache.jsp.tag.web.h3_002dnum_tag();
    _jspx_th_tag_h3$1num_4.setJspContext(_jspx_page_context);
    _jspx_th_tag_h3$1num_4.setParent(_jspx_parent);
    _jspx_th_tag_h3$1num_4.setName("debug");
    _jspx_th_tag_h3$1num_4.setTitle("$[ja:Twitter4J をつかったアプリケーションをデバッグする良い方法はありますか？]$[en:How do I debug my application?]");
    _jspx_th_tag_h3$1num_4.setJspBody(new faq_jspHelper( 5, _jspx_page_context, _jspx_th_tag_h3$1num_4, null));
    _jspx_th_tag_h3$1num_4.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h3$1num_5(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h3-num
    org.apache.jsp.tag.web.h3_002dnum_tag _jspx_th_tag_h3$1num_5 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h3_002dnum_tag.class) : new org.apache.jsp.tag.web.h3_002dnum_tag();
    _jspx_th_tag_h3$1num_5.setJspContext(_jspx_page_context);
    _jspx_th_tag_h3$1num_5.setParent(_jspx_parent);
    _jspx_th_tag_h3$1num_5.setName("compile");
    _jspx_th_tag_h3$1num_5.setTitle("$[ja:コード例が私の環境(Java1.4)ではコンパイルできません。]$[en:The code examples don't compile on my environment(Java1.4).]");
    _jspx_th_tag_h3$1num_5.setJspBody(new faq_jspHelper( 6, _jspx_page_context, _jspx_th_tag_h3$1num_5, null));
    _jspx_th_tag_h3$1num_5.doTag();
    return false;
  }

  private class faq_jspHelper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private javax.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public faq_jspHelper( int discriminator, JspContext jspContext, javax.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("<div class=\"faq\">\n");
      out.write("    <ol class=\"main\">\n");
      out.write("\n");
      if (_jspx_meth_tag_h3$1num_0((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h3$1num_1((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h3$1num_2((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h3$1num_3((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h3$1num_4((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h3$1num_5((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write("\n");
      out.write("</div>\n");
      return false;
    }
    public boolean invoke1( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:Twitter4J のかわりにアプリケーション名を表示させるには<a href=\"http://twitter.com/oauth_clients/new\">Twitterの登録ページ</a>で事前にアプリケーションを登録しておき、 OAuth 認可方式でステータスのアップデートを行う必要があります。]\n");
      out.write("$[en:In order to get your app name seen on twitter.com, you need to register your application at <a href=\"http://twitter.com/oauth_clients/new\">twitter.com</a> in advance, and use OAuth scheme.]\n");
      out.write("$[ja:こちらのページもご覧ください]$[en:See also]:<br>\n");
      out.write("<ul>\n");
      out.write("  <li class=\"numberedlist\">\n");
      out.write("    Twitter API Wiki - FAQ - <a href=\"http://apiwiki.twitter.com/FAQ#HowdoIget“fromMyApp”appendedtoupdatessentfrommyAPIapplication\">How do I get “from [MyApp]” appended to updates sent from my API application?</a>\n");
      out.write("  </li>\n");
      out.write("</ul>\n");
      return false;
    }
    public boolean invoke2( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:はい。Twitter の API はスレッドセーフですのでメソッドコールは並列に行うことができます。]\n");
      out.write("$[en:Yes. Twitter4J is thread-safe and you can make method calls concurrently.]\n");
      return false;
    }
    public boolean invoke3( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:バグレポートは<a href=\"index.html#mailingList\">メーリングリスト</a>へどうぞ。Twitter4J のバグではなく、Twitter API の問題と確信している場合は本家<a href=\"http://groups.google.com/group/twitter-development-talk\">Twitter Deveopment Talk</a>へ投げることをお勧めします。]\n");
      out.write("$[en:Please feel free to post any reports to the <a href=\"index.html#mailingList\">Twitter4J list</a>. If you are sure that the nature of the problem is in the Twitter API itself, you may want to report to the <a href=\"http://groups.google.com/group/twitter-development-talk\">Twitter Deveopment Talk</a>.]\n");
      out.write("$[ja:こちらのページもご覧ください]$[en:See also]:<br>\n");
      out.write("<ul>\n");
      out.write("  <li class=\"numberedlist\">\n");
      out.write("    <a href=\"http://code.google.com/p/twitter-api/issues/list\">Issues -  twitter-api - Google Code</a>\n");
      out.write("  </li>\n");
      out.write("  <li class=\"numberedlist\">\n");
      out.write("    <a href=\"http://twitter4j.org/jira/browse/TFJ?report=com.atlassian.jira.plugin.system.project:roadmap-panel\">Twitter4J $[ja:ロードマップ]$[en: Road Map]</a>\n");
      out.write("  </li>\n");
      out.write("</ul>\n");
      return false;
    }
    public boolean invoke4( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:システムプロパティ(-Dtwitter4j.http.proxyHost, -Dtwitter4j.http.proxyPort) か、以下のように twitter4j.properties というファイルで設定できます。]\n");
      out.write("$[en:You can either to use system properties(-Dtwitter4j.http.proxyHost, -Dtwitter4j.http.proxyPort) or twitter4j.properties.]<br>\n");
      out.write("<pre class=\"codeSample\">\n");
      out.write("http.proxyHost=your.proxy.host\n");
      out.write("http.proxyPort=8080\n");
      out.write("</pre>\n");
      out.write("$[ja:twitter4j.properties はクラスパスのルート、WEB-INF/、プロセスのデフォルトディレクトリのいずれかに置くことができます。]\n");
      out.write("$[en:twitter4j.properties can to be located in the root of your app's classpath, in WEB-INF/ directory, or in the process's default directory.]<br>\n");
      out.write("\n");
      return false;
    }
    public boolean invoke5( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:システムプロパティ twitter4j.debug を true に設定すると Twitter API とのやりとりが標準出力にダンプされます。]\n");
      out.write("$[en:You can set the system property twitter4j.debug to true to dump the stream between your client and the twitter API.]\n");
      return false;
    }
    public boolean invoke6( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:Twitter4J は getTimeline(),getUserTimeline(), getFriendsTimeline() などリストを返すメソッドで総称型(generics)を返します。コード例の表記法は Java1.4 では利用できません。以下の様にリスト内の要素を取得する際に明示的にキャストを行う必要があります。]\n");
      out.write("$[en:Example codes for methods return a list of object such as getTimeline(), getUserTimeline(), and getFriendsTimeline() use Java Generics grammar which is applicable Java 5.0 or later. Projects using JDK1.4 (including the <a href=\"http://processing.org/\">Processing platform</a>) or earlier need to cast explicitly to get elements inside the list as follows:]\n");
      out.write("<pre class=\"codeSample\">\n");
      out.write("    Twitter twitter = new Twitter(twitterID,twitterPassword);\n");
      out.write("    List statuses = twitter.getFriendsTimeline();\n");
      out.write("    System.out.println(\"Showing friends timeline.\");\n");
      out.write("    for(int i=0; i < statuses.size() ; i++) {\n");
      out.write("      Status status = (Status)statuses.get(i);\n");
      out.write("        System.out.println(status.getUser().getName() + \":\" +\n");
      out.write("                           status.getText()); \n");
      out.write("    }\n");
      out.write("</pre>\n");
      out.write("$[ja:こちらのページもご覧ください]$[en:See also]:\n");
      out.write("<ul>\n");
      out.write("  <li class=\"numberedlist\">\n");
      out.write("<a href=\"http://processing.org/discourse/yabb2/YaBB.pl?board=Integrate;action=display;num=1192732862\">Processing 1.0 - Processing and Twitter</a>\n");
      out.write("  </li>\n");
      out.write("  <li class=\"numberedlist\">\n");
      out.write("    <a href=\"http://processing.org/discourse/yabb2/YaBB.pl?num=1239359542\">Processing 1.0 - Twitter4J</a>\n");
      out.write("  </li>\n");
      out.write("</ul>\n");
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws JspException
    {
      JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
          case 1:
            invoke1( out );
            break;
          case 2:
            invoke2( out );
            break;
          case 3:
            invoke3( out );
            break;
          case 4:
            invoke4( out );
            break;
          case 5:
            invoke5( out );
            break;
          case 6:
            invoke6( out );
            break;
        }
      }
      catch( Throwable e ) {
        if (e instanceof SkipPageException)
            throw (SkipPageException) e;
        throw new JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}
