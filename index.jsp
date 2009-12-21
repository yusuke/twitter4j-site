<%@page pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - A Java library for the Twitter API">
    <a name="introduction"><h2>$[ja:Twitter4Jとは？]$[en:Introduction]</h2></a>
    <p>$[ja:Twitter4J は <a href="http://groups.google.com/group/twitter-development-talk/web/api-documentation">TwitterAPI</a> の Java ラッパです。<br>
    Twitter4J を使うと XML や HTTP に詳しくなくても容易に Twitter とインタラクトするアプリケーションを書くことが出来ます。]
$[en:Twitter4J is a Java library for <a href="http://groups.google.com/group/twitter-development-talk/web/api-documentation">TwitterAPI</a>.<br>
    With Twitter4J, you can easily integrate your Java application with the Twitter service.<br>
    <br>Twitter4J is featuring:]
<br>
<font color="green">✔</font> 100% Pure Java - works on any Java Platform version 1.4.2 or later<br>
<font color="green">✔</font> $[en:Works on <a href="http://code.google.com/android/">Android</a> platform (from Version 2.1.0)]$[ja:<a href="http://code.google.com/android/">Android</a> プラットフォーム上でも動作します]<br>
<font color="green">✔</font> $[en:Zero dependency : No additional jars required]$[ja:依存なし : 追加の jar ファイルなどは必要ありません]<br>
<font color="green">✔</font> $[en:Built-in OAuth support]$[ja:OAuth に対応]<br>
<font color="green">✔</font> $[en:Out-of-the-box gzip support for faster performance]$[ja:デフォルトで gip をサポートするため高速]<br>

    </p>
    <a name="systemRequirements"><h2>$[ja:システム要件]$[en:System Requirements]</h2></a>
    <p>$[ja:OS: Java をサポートする Windows または Unix 系 OS<br>
JVM: Java 1.4.2 またはそれ以降]
$[en:OS: Windows or any flavor of Unix that supports Java.<br>
JVM: Java 1.4.2 or later]</p>
    <a name="howToUse"><h2>$[ja:使い方]$[en:How To Use]</h2></a>
    <p>$[ja:twitter4j-<include>latest-version.fragment</include>.jar をクラスパスに通して、好きなメソッドを呼び出してください。<br>
    Java が分かっていれば <a href="./javadoc/index.html">JavaDoc</a> を見るのが早いです。<br>
    twitter4j.<a href="javadoc/twitter4j/Twitter.html">Twitter</a> クラスが最初に見るべきクラスです。]
    $[en:Just add twitter4j-<include>latest-version.fragment</include>.jar to your application classpath.<br>
    If you are familiar with Java language, looking at the <a href="./javadoc/index.html">JavaDoc</a> should be the shortest way for you to get started.<br>
    <a href="javadoc/twitter4j/Twitter.html">twitter4j.Twitter</a> class is the one you may want to look at first.]
    </p>
</ol>

<a name="download"><h2>$[ja:ダウンロード]$[en:Download]</h2></a>
<p>･$[ja:最新ビルド (<a href="http://yusuke.homeip.net/jira/secure/IssueNavigator.jspa?mode=hide&requestId=10010">現在開発中</a>の安定ビルド)]$[en:Latest stable build (<a href="http://yusuke.homeip.net/jira/secure/IssueNavigator.jspa?mode=hide&requestId=10010">In development</a>)]<br><a href="http://yusuke.homeip.net/twitter4j/en/<include>latest-SNAPSHOT-version.fragment</include>/twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.jar"><img alt="$[ja:ダウンロード]$[en:Download]" title="$[ja:ダウンロード]$[en:Download]" class="download" src="./images/download.jpg"></a><br>
    <a href="http://yusuke.homeip.net/twitter4j/en/twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip">twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip</a> (<a href="./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">JavaDoc</a> / <a href="http://yusuke.homeip.net/twitter4j/$[ja:ja]$[en:en]/javadoc.html#migration">$[ja:2.0.x から 2.1.x への移行ガイド]$[en:Migration guide from 2.0.x to 2.1.x])</a><br>
<br>
･$[ja:Maven Central Repository で入手可能な最新バージョン]$[en:Latest Maven Central Repository available version]<br>
<a href="http://yusuke.homeip.net/twitter4j/en/twitter4j-<include>latest-version.fragment</include>.zip"><img alt="$[ja:ダウンロード]$[en:Download]" title="$[ja:ダウンロード]$[en:Download]" class="download" src="./images/download.jpg"></a><br>
    <a href="http://yusuke.homeip.net/twitter4j/en/twitter4j-<include>latest-version.fragment</include>.zip">twitter4j-<include>latest-version.fragment</include>.zip</a> (<a href="./javadoc/index.html">JavaDoc</a>)<br>
<br>
</p>

    <a name="sourceCode"><h2>$[ja:ソースコード]$[en:Source Code]</h2></a>
    <p>$[ja:アーカイブにはソースコードが含まれています。<br>
    プロジェクトのリポジトリには以下の URL からアクセスできます。]
    $[en:The archive contains jar file along with source code.<br>
    You can also browse the project repository at:]
    <pre class="codeSample">Fisheye: <a href="http://yusuke.homeip.net/fisheye/browse/svn/twitter4j/trunk">http://yusuke.homeip.net/fisheye/browse/svn/twitter4j/trunk</a></pre>
    $[ja:または以下のように subversion クライアント、または git を使って最新のソースコードをチェックアウトすることもできます。]
    $[en: Or you can check out the latest source code anonymously with a subversion client as follows:]
    <pre class="codeSample">svn checkout http://yusuke.homeip.net/svn/twitter4j/trunk twitter4j</pre>
    <pre class="codeSample">git clone git://github.com/yusuke/twitter4j.git</pre>
    </p>

    <a name="maven"><h2>$[ja:Maven 統合]$[en:Maven Integration]</h2></a>
<p>$[ja:Maven を使っている場合、pom.xml に以下のように記載すればご自身のプロジェクトに twitter4j の最新安定ビルドを簡単に統合できます。]
$[en:You can integrate Twitter4j easily by including following lines into your pom.xml.]
<pre class="codeSample">   &lt;repositories&gt;
      &lt;repository&gt;
         &lt;id&gt;yusuke.homeip.net&lt;/id&gt;
         &lt;name&gt;yusuke.homeip.net Repository&lt;/name&gt;
         &lt;url&gt;http://yusuke.homeip.net/maven2&lt;/url&gt;
         &lt;releases&gt;
            &lt;enabled&gt;true&lt;/enabled&gt;
         &lt;/releases&gt;
         &lt;snapshots&gt;
            &lt;enabled&gt;true&lt;/enabled&gt;
         &lt;/snapshots&gt;
      &lt;/repository&gt;
   &lt;/repositories&gt;
   &lt;dependencies&gt;
      &lt;dependency&gt;
         &lt;groupId&gt;net.homeip.yusuke&lt;/groupId&gt;
         &lt;artifactId&gt;twitter4j&lt;/artifactId&gt;
         &lt;version&gt;[2.1,)&lt;/version&gt;
         &lt;scope&gt;compile&lt;/scope&gt;
      &lt;/dependency&gt;
   &lt;/dependencies&gt;</pre>

$[ja:Maven Central Repository を使いたい場合、pom.xml に以下のように記載してください。]
$[en:If you prefer the Maven central repository, include following lines to your pom.xml.]
<pre class="codeSample">   &lt;dependencies&gt;<br/>       &lt;dependency&gt;<br/>           &lt;groupId&gt;net.homeip.yusuke&lt;/groupId&gt;<br/>           &lt;artifactId&gt;twitter4j&lt;/artifactId&gt;<br/>           &lt;version&gt;[2.0,)&lt;/version&gt;<br/>       &lt;/dependency&gt;<br/>       ...<br/>   &lt;/dependencies&gt;<br/></pre>


</p>

    <a name="mailingList"><h2>$[ja:メーリングリスト]$[en:Mailing list]</h2></a>
    <p>$[ja:Twitter4J に関する質問、バグレポート、リクエストなどありましたら以下のメーリングリストにお気軽にどうぞ。<br>
<table border=0 style="background-color: #fff; padding: 5px;" cellspacing=0>
  <tr><td>
    <img src="http://groups.google.com/groups/img/3/groups_bar_ja.gif"
         height=26 width=132 alt="Google グループ">
  </td></tr>
  <tr><td style="padding-left: 5px"> <b>Twitter4J Jに参加</b> </td></tr>
  <form action="http://groups.google.com/group/twitter4j-j/boxsubscribe">
  <tr><td style="padding-left: 5px;"> メール アドレス: <input type=text name=email>
           <input type=submit name="sub" value="登録">
  </td></tr>
</form>
<tr><td align=right> <a href="http://groups.google.com/group/twitter4j-j">このグループにアクセス</a> </td></tr>
</table>
バグ、ロードマップなどについては Jira に登録してあります。<br>
    <a href="http://yusuke.homeip.net/jira/browse/TFJ">Jira へ</a>
    ]
    $[en:Any comment, bug report, feature request or patch is highly welcomed.<br>
    Feel free to post your comments to the mailing list.<br>
<table border=0 style="background-color: #fff; padding: 5px;" cellspacing=0>
  <tr><td>
    <img src="http://groups.google.com/groups/img/3/groups_bar.gif"
         height=26 width=132 alt="Google Groups">
  </td></tr>
  <tr><td style="padding-left: 5px">
    <b>Subscribe to Twitter4J</b>
  </td></tr>
  <form action="http://groups.google.com/group/twitter4j/boxsubscribe">
  <tr><td style="padding-left: 5px;">
    Email: <input type=text name=email>
           <input type=submit name="sub" value="Subscribe">
  </td></tr>
</form>
<tr><td align=right>
  <a href="http://groups.google.com/group/twitter4j">Visit this group</a>
</td></tr>
</table>
<br>
Known bugs and feature requests will be filed to the Jira site.<br>
    <a href="http://yusuke.homeip.net/jira/browse/TFJ">Go to Jira</a>
    ]
    </p>

    <a name="license"><h2>$[ja:ライセンス]$[en:License]</h2></a>
$[ja:Twitter4J は BSD スタイルライセンスに基づいてリリースされています。<br>]
$[en:Twitter4J is released under a BSD-style license.<br>]
<hr/>
<pre class="codeSample">
Copyright (c) 2007-2009, Yusuke Yamamoto
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Yusuke Yamamoto nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY Yusuke Yamamoto ``AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Yusuke Yamamoto BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.</pre>
$[ja:Twitter4J は JSON レスポンスの解析のため JSON.org のソフトウェアを含んでいます。JSON.org のソフトウェアのライセンスについては<a href="http://www.JSON.org/license.html">The JSON License</a>をご覧ください。<br>]
$[en:Twitter4J includes software from JSON.org to parse JSON response from the Twitter API. You can see the license term at <a href="http://www.JSON.org/license.html">The JSON License</a>.<br>]

    <a name="pricing"><h2>$[ja:寄付]$[en:Donation]</h2></a>
$[ja:Twitter4J はどなたでも商用、非商用にかかわらず無償でご利用いただけます。<br>
もし Twitter4J があなたの生活を豊かにしてくれると感じたならば、寄付もご検討ください。<br>
現在の所、寄付金は主にサーバの電気代に利用されています。<br><br>
]
$[en:Twitter4J is an opensourced software and free of charge.<br>
You can use Twitter4J freely for any commercial and non-commercial projects.<br>
If you feel Twitter4J makes your life easier, please do consider making a donation!<br>
<br>]
<include>paypal.html</include>
<br>
<br>
<br>
</tag:skelton>