package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/WEB-INF/tags/skelton.tag");
    _jspx_dependants.add("/WEB-INF/tags/left.tag");
    _jspx_dependants.add("/WEB-INF/tags/h2.tag");
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
    _jspx_th_tag_skelton_0.setTitle("Twitter4J - A Java library for the Twitter API");
    _jspx_th_tag_skelton_0.setJspBody(new index_jspHelper( 0, _jspx_page_context, _jspx_th_tag_skelton_0, null));
    _jspx_th_tag_skelton_0.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_0(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_0.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_0.setParent(_jspx_parent);
    _jspx_th_tag_h2_0.setName("introduction");
    _jspx_th_tag_h2_0.setTitle("$[ja:Twitter4Jとは？]$[en:Introduction]");
    _jspx_th_tag_h2_0.setJspBody(new index_jspHelper( 1, _jspx_page_context, _jspx_th_tag_h2_0, null));
    _jspx_th_tag_h2_0.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_1(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_1 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_1.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_1.setParent(_jspx_parent);
    _jspx_th_tag_h2_1.setName("systemRequirements");
    _jspx_th_tag_h2_1.setTitle("$[ja:システム要件]$[en:System Requirements]");
    _jspx_th_tag_h2_1.setJspBody(new index_jspHelper( 2, _jspx_page_context, _jspx_th_tag_h2_1, null));
    _jspx_th_tag_h2_1.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_2(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_2 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_2.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_2.setParent(_jspx_parent);
    _jspx_th_tag_h2_2.setName("howToUse");
    _jspx_th_tag_h2_2.setTitle("$[ja:使い方]$[en:How To Use]");
    _jspx_th_tag_h2_2.setJspBody(new index_jspHelper( 3, _jspx_page_context, _jspx_th_tag_h2_2, null));
    _jspx_th_tag_h2_2.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_3(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_3 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_3.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_3.setParent(_jspx_parent);
    _jspx_th_tag_h2_3.setName("download");
    _jspx_th_tag_h2_3.setTitle("$[ja:ダウンロード]$[en:Download]");
    _jspx_th_tag_h2_3.setJspBody(new index_jspHelper( 4, _jspx_page_context, _jspx_th_tag_h2_3, null));
    _jspx_th_tag_h2_3.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_4(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_4 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_4.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_4.setParent(_jspx_parent);
    _jspx_th_tag_h2_4.setName("sourceCode");
    _jspx_th_tag_h2_4.setTitle("$[ja:ソースコード]$[en:Source Code]");
    _jspx_th_tag_h2_4.setJspBody(new index_jspHelper( 5, _jspx_page_context, _jspx_th_tag_h2_4, null));
    _jspx_th_tag_h2_4.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_5(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_5 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_5.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_5.setParent(_jspx_parent);
    _jspx_th_tag_h2_5.setName("maven");
    _jspx_th_tag_h2_5.setTitle("$[ja:Maven 統合]$[en:Maven Integration]");
    _jspx_th_tag_h2_5.setJspBody(new index_jspHelper( 6, _jspx_page_context, _jspx_th_tag_h2_5, null));
    _jspx_th_tag_h2_5.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_6(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_6 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_6.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_6.setParent(_jspx_parent);
    _jspx_th_tag_h2_6.setName("mailingList");
    _jspx_th_tag_h2_6.setTitle("$[ja:メーリングリスト]$[en:Mailing list]");
    _jspx_th_tag_h2_6.setJspBody(new index_jspHelper( 7, _jspx_page_context, _jspx_th_tag_h2_6, null));
    _jspx_th_tag_h2_6.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_7(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_7 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_7.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_7.setParent(_jspx_parent);
    _jspx_th_tag_h2_7.setName("license");
    _jspx_th_tag_h2_7.setTitle("$[ja:ライセンス]$[en:License]");
    _jspx_th_tag_h2_7.setJspBody(new index_jspHelper( 8, _jspx_page_context, _jspx_th_tag_h2_7, null));
    _jspx_th_tag_h2_7.doTag();
    return false;
  }

  private boolean _jspx_meth_tag_h2_8(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tag:h2
    org.apache.jsp.tag.web.h2_tag _jspx_th_tag_h2_8 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.h2_tag.class) : new org.apache.jsp.tag.web.h2_tag();
    _jspx_th_tag_h2_8.setJspContext(_jspx_page_context);
    _jspx_th_tag_h2_8.setParent(_jspx_parent);
    _jspx_th_tag_h2_8.setName("donation");
    _jspx_th_tag_h2_8.setTitle("$[ja:寄付]$[en:Donation]");
    _jspx_th_tag_h2_8.setJspBody(new index_jspHelper( 9, _jspx_page_context, _jspx_th_tag_h2_8, null));
    _jspx_th_tag_h2_8.doTag();
    return false;
  }

  private class index_jspHelper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private javax.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public index_jspHelper( int discriminator, JspContext jspContext, javax.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( JspWriter out ) 
      throws Throwable
    {
      out.write('\n');
      out.write('\n');
      if (_jspx_meth_tag_h2_0((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h2_1((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h2_2((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h2_3((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h2_4((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h2_5((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h2_6((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h2_7((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      if (_jspx_meth_tag_h2_8((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      out.write("\n");
      out.write("<include>paypal.html</include>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      return false;
    }
    public boolean invoke1( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:Twitter4J は <a href=\"http://apiwiki.twitter.com/Twitter-API-Documentation\">Twitter API</a> の Java ラッパです。<br>\n");
      out.write("    Twitter4J を使うと JSON や HTTP に詳しくなくても容易に Twitter とインタラクトするアプリケーションを書くことが出来ます。Twitter4J は Twitter 非公式のライブラリです。]\n");
      out.write("$[en:Twitter4J is an unofficial Java library for the <a href=\"http://apiwiki.twitter.com/Twitter-API-Documentation\">Twitter API</a>.<br>\n");
      out.write("    With Twitter4J, you can easily integrate your Java application with the Twitter service. Twitter4J is an unofficial library.<br>\n");
      out.write("    <br>Twitter4J is featuring:]\n");
      out.write("<br>\n");
      out.write("<font color=\"green\">✔</font> 100% Pure Java - works on any Java Platform version 1.4.2 or later<br>\n");
      out.write("<font color=\"green\">✔</font> $[en:<a href=\"http://code.google.com/android/\">Android</a> platform and <a href=\"http://code.google.com/appengine/\">Google APP Engine</a> ready]$[ja:<a href=\"http://code.google.com/android/\">Android</a> や<a href=\"http://code.google.com/appengine/\">Google APP Engine</a>上でも動作します]<br>\n");
      out.write("<font color=\"green\">✔</font> $[en:Zero dependency : No additional jars required]$[ja:依存なし : 追加の jar ファイルなどは必要ありません]<br>\n");
      out.write("<font color=\"green\">✔</font> $[en:Built-in OAuth support]$[ja:OAuth に対応]<br>\n");
      out.write("<font color=\"green\">✔</font> $[en:Out-of-the-box gzip support]$[ja:デフォルトで gzip をサポートするため高速]<br>\n");
      return false;
    }
    public boolean invoke2( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("    $[ja:OS: Java をサポートする Windows または Unix 系 OS<br>\n");
      out.write("JVM: Java 1.4.2 またはそれ以降]\n");
      out.write("$[en:OS: Windows or any flavor of Unix that supports Java.<br>\n");
      out.write("JVM: Java 1.4.2 or later]\n");
      return false;
    }
    public boolean invoke3( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("    $[ja:twitter4j-core-<include>latest-version.fragment</include>.jar をクラスパスに通して、好きなメソッドを呼び出してください。<br>\n");
      out.write("    Java が分かっていれば <a href=\"./javadoc/index.html\">JavaDoc</a> を見るのが早いです。<br>\n");
      out.write("    twitter4j.<a href=\"javadoc/twitter4j/Twitter.html\">Twitter</a> クラスが最初に見るべきインターフェースです。]\n");
      out.write("    $[en:Just add twitter4j-core-<include>latest-version.fragment</include>.jar to your application classpath.<br>\n");
      out.write("    If you are familiar with Java language, looking into the <a href=\"./javadoc/index.html\">JavaDoc</a> should be the shortest way for you to get started.<br>\n");
      out.write("    <a href=\"javadoc/twitter4j/Twitter.html\">twitter4j.Twitter</a> interface is the one you may want to look at first.]\n");
      return false;
    }
    public boolean invoke4( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("･$[ja:最新安定バージョン]$[en:Latest stable version]<br>\n");
      out.write("<a href=\"http://twitter4j.org/en/twitter4j-<include>latest-version.fragment</include>.zip\"><img alt=\"$[ja:ダウンロード]$[en:Download]\" title=\"$[ja:ダウンロード]$[en:Download]\" class=\"download\" src=\"./images/download.jpg\"></a><br>\n");
      out.write("    <a href=\"http://twitter4j.org/en/twitter4j-<include>latest-version.fragment</include>.zip\">twitter4j-<include>latest-version.fragment</include>.zip</a> (<a href=\"./javadoc/index.html\">JavaDoc</a> / <a href=\"http://twitter4j.org/$[ja:ja]$[en:en]/versions.html#migration21x-22x\">$[ja:2.1.x から 2.2.x への移行ガイド]$[en:Migration guide from 2.1.x to 2.2.x]</a>)<br>\n");
      out.write("    <a href=\"http://twitter4j.org/en/twitter4j-android-<include>latest-version.fragment</include>.zip\">twitter4j-android-<include>latest-version.fragment</include>.zip</a>($[ja:Android向けのスリムバージョン]$[en:slimmed version for Android platform])<br>\n");
      out.write("<br><a name=\"snapshot\">･$[ja:最新スナップショットビルド]$[en:Latest snapshot build]</a><br><a href=\"http://twitter4j.org/en/twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip\"><img alt=\"$[ja:ダウンロード]$[en:Download]\" title=\"$[ja:ダウンロード]$[en:Download]\" class=\"download\" src=\"./images/download.jpg\"></a><br>\n");
      out.write("    <a href=\"http://twitter4j.org/en/twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip\">twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip</a> (<a href=\"./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html\">JavaDoc</a>)<br>\n");
      out.write("    <a href=\"http://twitter4j.org/en/twitter4j-android-<include>latest-SNAPSHOT-version.fragment</include>.zip\">twitter4j-android-<include>latest-SNAPSHOT-version.fragment</include>.zip</a>($[ja:Android向けのスリムバージョン]$[en:slimmed version for Android platform])<br>\n");
      out.write("\n");
      out.write('\n');
      return false;
    }
    public boolean invoke5( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("    $[ja:アーカイブにはソースコードが含まれています。<br>\n");
      out.write("    プロジェクトのリポジトリには以下の URL からアクセスできます。]\n");
      out.write("    $[en:The archive contains jar file along with source code.<br>\n");
      out.write("    You can also browse the project repository at:]\n");
      out.write("<!--    <pre class=\"codeSample\">Fisheye: <a href=\"http://twitter4j.org/fisheye/browse/twitter4j\">http://twitter4j.org/fisheye/browse/twitter4j</a></pre>-->\n");
      out.write("    <pre class=\"codeSample\">github: <a href=\"http://github.com/yusuke/twitter4j/\">http://github.com/yusuke/twitter4j/</a></pre>\n");
      out.write("\n");
      out.write("    $[ja:または以下のように<!-- subversion クライアント、または--> git を使って最新のソースコードをチェックアウトすることもできます。]\n");
      out.write("    $[en: Or you can check out the latest source code anonymously <!--with a subversion client -->as follows:]\n");
      out.write("<!--    <pre class=\"codeSample\">svn checkout http://twitter4j.org/svn/twitter4j/trunk twitter4j</pre>-->\n");
      out.write("    <pre class=\"codeSample\">git clone git://github.com/yusuke/twitter4j.git</pre>\n");
      return false;
    }
    public boolean invoke6( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:Maven を使っている場合、pom.xml に以下のように記載すればご自身のプロジェクトに twitter4j の最新安定ビルドを簡単に統合できます。]\n");
      out.write("$[en:You can integrate the latest Twitter4J build easily by just including the following lines in your pom.xml.]\n");
      out.write("<pre class=\"codeSample\">   &lt;repositories&gt;\n");
      out.write("      &lt;repository&gt;\n");
      out.write("         &lt;id&gt;twitter4j.org&lt;/id&gt;\n");
      out.write("         &lt;name&gt;twitter4j.org Repository&lt;/name&gt;\n");
      out.write("         &lt;url&gt;http://twitter4j.org/maven2&lt;/url&gt;\n");
      out.write("         &lt;releases&gt;\n");
      out.write("            &lt;enabled&gt;true&lt;/enabled&gt;\n");
      out.write("         &lt;/releases&gt;\n");
      out.write("         &lt;snapshots&gt;\n");
      out.write("            &lt;enabled&gt;true&lt;/enabled&gt;\n");
      out.write("         &lt;/snapshots&gt;\n");
      out.write("      &lt;/repository&gt;\n");
      out.write("   &lt;/repositories&gt;\n");
      out.write("   &lt;dependencies&gt;\n");
      out.write("      &lt;dependency&gt;\n");
      out.write("         &lt;groupId&gt;org.twitter4j&lt;/groupId&gt;\n");
      out.write("         &lt;artifactId&gt;twitter4j-core&lt;/artifactId&gt;\n");
      out.write("         &lt;version&gt;[2.2,)&lt;/version&gt;\n");
      out.write("      &lt;/dependency&gt;\n");
      out.write("   &lt;/dependencies&gt;</pre>\n");
      out.write("\n");
      out.write("$[ja:Maven Central Repository を使いたい場合、pom.xml に以下のように記載してください。]\n");
      out.write("$[en:If you prefer the Maven central repository, include the following lines to your pom.xml.]\n");
      out.write("<pre class=\"codeSample\">   &lt;dependencies&gt;<br/>      &lt;dependency&gt;<br/>           &lt;groupId&gt;org.twitter4j&lt;/groupId&gt;<br/>           &lt;artifactId&gt;twitter4j-core&lt;/artifactId&gt;<br/>           &lt;version&gt;[2.2,)&lt;/version&gt;<br/>       &lt;/dependency&gt;<br/>       ...<br/>   &lt;/dependencies&gt;<br/></pre>\n");
      return false;
    }
    public boolean invoke7( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("    $[ja:Twitter4J に関する質問、バグレポート、リクエストなどありましたら以下のメーリングリストにお気軽にどうぞ。<br>\n");
      out.write("<table border=0 style=\"background-color: #fff; padding: 5px;\" cellspacing=0>\n");
      out.write("  <tr><td>\n");
      out.write("    <img src=\"http://groups.google.com/groups/img/3/groups_bar_ja.gif\"\n");
      out.write("         height=26 width=132 alt=\"Google グループ\">\n");
      out.write("  </td></tr>\n");
      out.write("  <tr><td style=\"padding-left: 5px\"> <b>Twitter4J Jに参加</b> </td></tr>\n");
      out.write("  <form action=\"http://groups.google.com/group/twitter4j-j/boxsubscribe\">\n");
      out.write("  <tr><td style=\"padding-left: 5px;\"> メール アドレス: <input type=text name=email>\n");
      out.write("           <input type=submit name=\"sub\" value=\"登録\">\n");
      out.write("  </td></tr>\n");
      out.write("</form>\n");
      out.write("<tr><td align=right> <a href=\"http://groups.google.com/group/twitter4j-j\">このグループにアクセス</a> </td></tr>\n");
      out.write("</table>\n");
      out.write("非常にやりとりが活発な英語版の購読もお勧めします。\n");
      out.write("<table border=0 style=\"background-color: #fff; padding: 5px;\" cellspacing=0>\n");
      out.write("  <tr><td>\n");
      out.write("    <img src=\"http://groups.google.com/groups/img/3/groups_bar.gif\"\n");
      out.write("         height=26 width=132 alt=\"Google Groups\">\n");
      out.write("  </td></tr>\n");
      out.write("  <tr><td style=\"padding-left: 5px\">\n");
      out.write("    <b>Subscribe to Twitter4J</b>\n");
      out.write("  </td></tr>\n");
      out.write("  <form action=\"http://groups.google.com/group/twitter4j/boxsubscribe\">\n");
      out.write("  <tr><td style=\"padding-left: 5px;\">\n");
      out.write("    Email: <input type=text name=email>\n");
      out.write("           <input type=submit name=\"sub\" value=\"Subscribe\">\n");
      out.write("  </td></tr>\n");
      out.write("</form>\n");
      out.write("<tr><td align=right>\n");
      out.write("  <a href=\"http://groups.google.com/group/twitter4j\">Visit this group</a>\n");
      out.write("</td></tr>\n");
      out.write("</table>]\n");
      out.write("    $[en:Any question, comment, bug report, feature request or patch is highly welcomed.<br>\n");
      out.write("    Feel free to post your comments to the mailing list.<br>\n");
      out.write("<table border=0 style=\"background-color: #fff; padding: 5px;\" cellspacing=0>\n");
      out.write("  <tr><td>\n");
      out.write("    <img src=\"http://groups.google.com/groups/img/3/groups_bar.gif\"\n");
      out.write("         height=26 width=132 alt=\"Google Groups\">\n");
      out.write("  </td></tr>\n");
      out.write("  <tr><td style=\"padding-left: 5px\">\n");
      out.write("    <b>Subscribe to Twitter4J</b>\n");
      out.write("  </td></tr>\n");
      out.write("  <form action=\"http://groups.google.com/group/twitter4j/boxsubscribe\">\n");
      out.write("  <tr><td style=\"padding-left: 5px;\">\n");
      out.write("    Email: <input type=text name=email>\n");
      out.write("           <input type=submit name=\"sub\" value=\"Subscribe\">\n");
      out.write("  </td></tr>\n");
      out.write("</form>\n");
      out.write("<tr><td align=right>\n");
      out.write("  <a href=\"http://groups.google.com/group/twitter4j\">Visit this group</a>\n");
      out.write("</td></tr>\n");
      out.write("</table>\n");
      out.write("]\n");
      return false;
    }
    public boolean invoke8( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:Twitter4J は Apache License 2.0 に基づいてリリースされています。<br>]\n");
      out.write("$[en:Twitter4J is released under Apache License 2.0.<br>]\n");
      out.write("<hr/>\n");
      out.write("<pre class=\"codeSample\">Copyright 2007 Yusuke Yamamoto\n");
      out.write("\n");
      out.write("Licensed under the Apache License, Version 2.0 (the \"License\");\n");
      out.write("you may not use this file except in compliance with the License.\n");
      out.write("You may obtain a copy of the License at\n");
      out.write("\n");
      out.write("      http://www.apache.org/licenses/LICENSE-2.0\n");
      out.write("\n");
      out.write("Unless required by applicable law or agreed to in writing, software\n");
      out.write("Distributed under the License is distributed on an \"AS IS\" BASIS,\n");
      out.write("WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n");
      out.write("See the License for the specific language governing permissions and\n");
      out.write("limitations under the License.</pre>\n");
      out.write("$[ja:Twitter4J は JSON レスポンスの解析のため JSON.org のソフトウェアを含んでいます。JSON.org のソフトウェアのライセンスについては<a href=\"http://www.JSON.org/license.html\">The JSON License</a>をご覧ください。<br>]\n");
      out.write("$[en:Twitter4J includes software from JSON.org to parse JSON response from the Twitter API. You can see the license term at <a href=\"http://www.JSON.org/license.html\">The JSON License</a>.<br>]\n");
      return false;
    }
    public boolean invoke9( JspWriter out ) 
      throws Throwable
    {
      out.write("\n");
      out.write("$[ja:Twitter4J はどなたでも商用、非商用にかかわらず無償でご利用いただけます。<br>\n");
      out.write("もし Twitter4J があなたの生活を豊かにしてくれると感じたならば、寄付もご検討ください。<br>\n");
      out.write("現在の所、寄付金は主にサーバの電気代に利用されています。<br><br>\n");
      out.write("]\n");
      out.write("$[en:Twitter4J is an opensourced software and free of charge.<br>\n");
      out.write("You can use Twitter4J freely for any commercial and non-commercial projects.<br>\n");
      out.write("If you feel Twitter4J makes your life easier, please do consider making a donation!<br>\n");
      out.write("<br>]\n");
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
          case 7:
            invoke7( out );
            break;
          case 8:
            invoke8( out );
            break;
          case 9:
            invoke9( out );
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
