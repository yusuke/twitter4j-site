<%@page pageEncoding="UTF-8" session="false"%><%@taglib prefix="tag" tagdir="/WEB-INF/tags" %><tag:skelton
title="Twitter4J - A Java library for the Twitter API"
description="$[ja:Twitter4J は <a href='https://dev.twitter.com/docs'>Twitter API</a> の Java ラッパです。<br>
    Twitter4J を使うと JSON や HTTP に詳しくなくても容易に Twitter とインタラクトするアプリケーションを書くことが出来ます。Twitter4J は Twitter 非公式のライブラリです。]
$[en:Twitter4J is an unofficial Java library for the <a href='https://dev.twitter.com/docs'>Twitter API</a>.<br>
    With Twitter4J, you can easily integrate your Java application with the Twitter service. Twitter4J is an unofficial library.<br>
    <br>Twitter4J is featuring:]"
path="http://twitter4j/$[ja:ja]$[en:en]/index.html">

<tag:h2 name="introduction" title="$[ja:Twitter4Jとは？]$[en:Introduction]">
$[ja:Twitter4J は <a href="https://dev.twitter.com/docs">Twitter API</a> の Java ラッパです。<br>
    Twitter4J を使うと JSON や HTTP に詳しくなくても容易に Twitter とインタラクトするアプリケーションを書くことが出来ます。Twitter4J は Twitter 非公式のライブラリです。]
$[en:Twitter4J is an unofficial Java library for the <a href="https://dev.twitter.com/docs">Twitter API</a>.<br>
    With Twitter4J, you can easily integrate your Java application with the Twitter service. Twitter4J is an unofficial library.<br>
    <br>Twitter4J is featuring:]
<br>
<font color="green">✔</font> 100% Pure Java - works on any Java Platform version 5 or later<br>
<font color="green">✔</font> $[en:<a href="http://code.google.com/android/">Android</a> platform and <a href="http://code.google.com/appengine/">Google App Engine</a> ready]$[ja:<a href="http://code.google.com/android/">Android</a> や<a href="http://code.google.com/appengine/">Google App Engine</a>上でも動作します]<br>
<font color="green">✔</font> $[en:Zero dependency : No additional jars required]$[ja:依存なし : 追加の jar ファイルなどは必要ありません]<br>
<font color="green">✔</font> $[en:Built-in OAuth support]$[ja:OAuth に対応]<br>
<font color="green">✔</font> $[en:Out-of-the-box gzip support]$[ja:デフォルトで gzip をサポートするため高速]<br>
<font color="green">✔</font> $[en:100% Twitter API 1.1 compatible]$[ja:Twitter API 1.1に完全対応]<br>
</tag:h2>
<tag:h2 name="systemRequirements" title="$[ja:システム要件]$[en:System Requirements]">
    $[ja:OS: Java をサポートする Windows または Unix 系 OS<br>
JVM: Java 5 またはそれ以降]
$[en:OS: Windows or any flavor of Unix that supports Java.<br>
JVM: Java 5 or later]
</tag:h2>
<tag:h2 name="howToUse" title="$[ja:使い方]$[en:How To Use]">
    $[ja:twitter4j-core-<include>latest-version.fragment</include>.jar をクラスパスに通して、好きなメソッドを呼び出してください。<br>
    Java が分かっていれば <a href="/javadoc/index.html">JavaDoc</a> を見るのが早いです。<br>
    twitter4j.<a href="javadoc/twitter4j/Twitter.html">Twitter</a> クラスが最初に見るべきインターフェースです。]
    $[en:Just add twitter4j-core-<include>latest-version.fragment</include>.jar to your application classpath.<br>
    If you are familiar with Java language, looking into the <a href="/javadoc/index.html">JavaDoc</a> should be the shortest way for you to get started.<br>
    <a href="javadoc/twitter4j/Twitter.html">twitter4j.Twitter</a> interface is the one you may want to look at first.]
</tag:h2>
<tag:h2 name="download" title="$[ja:ダウンロード]$[en:Download]">
･$[ja:最新安定バージョン]$[en:Latest stable version]<br>
<a href="http://twitter4j.org/archive/twitter4j-<include>latest-version.fragment</include>.zip"><img alt="$[ja:ダウンロード]$[en:Download]" title="$[ja:ダウンロード]$[en:Download]" class="download" src="./images/download.jpg"></a><br>
    <a href="http://twitter4j.org/archive/twitter4j-<include>latest-version.fragment</include>.zip">twitter4j-<include>latest-version.fragment</include>.zip</a> (<a href="/javadoc/index.html">JavaDoc</a> / <a href="http://twitter4j.org/$[ja:ja]$[en:en]/versions.html#migration21x-22x">$[ja:2.1.x から 2.2.x への移行ガイド]$[en:Migration guide from 2.1.x to 2.2.x]</a>)<br>
    <strike>twitter4j-android-<include>latest-version.fragment</include>.zip</strike>($[ja:バージョン3.0.3で通常バージョンが十分にスリム化されたためAndroid向けビルドは廃止されました。通常バージョンをお使いください。]$[en:Regular version got slimmed down from version 3.0.3. Thus build for Android platform was retired. Use regular version instead.])<br>
<br><a name="snapshot"></a>･$[ja:最新スナップショットビルド]$[en:Latest snapshot build]<br><a href="http://twitter4j.org/archive/twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip"><img alt="$[ja:ダウンロード]$[en:Download]" title="$[ja:ダウンロード]$[en:Download]" class="download" src="./images/download.jpg"></a><br>
    <a href="http://twitter4j.org/archive/twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip">twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip</a> (<a href="./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">JavaDoc</a>)<br>
    <strike>twitter4j-android-<include>latest-SNAPSHOT-version.fragment</include>.zip</strike>($[ja:バージョン3.0.3で通常バージョンが十分にスリム化されたためAndroid向けビルドは廃止されました。通常バージョンをお使いください。]$[en:Regular version got slimmed down from version 3.0.3. Thus build for Android platform was retired. Use regular version instead.])<br>

<%--    <a href="http://twitter4j.org/en/twitter4j-android-<include>latest-version.fragment</include>.zip">twitter4j-android-<include>latest-version.fragment</include>.zip</a> (slimmed version for Android platform)<br>--%>
</tag:h2>
<tag:h2 name="sourceCode" title="$[ja:ソースコード]$[en:Source Code]">
    $[ja:アーカイブにはソースコードが含まれています。<br>
    プロジェクトのリポジトリには以下の URL からアクセスできます。]
    $[en:The archive contains jar file along with source code.<br>
    You can also browse the project repository at:]
<!--    <pre class="codeSample">Fisheye: <a href="http://twitter4j.org/fisheye/browse/twitter4j">http://twitter4j.org/fisheye/browse/twitter4j</a></pre>-->
    <pre class="codeSample">github: <a href="http://github.com/yusuke/twitter4j/">http://github.com/yusuke/twitter4j/</a></pre>

    $[ja:または以下のように<!-- subversion クライアント、または--> git を使って最新のソースコードをチェックアウトすることもできます。]
    $[en: Or you can check out the latest source code anonymously <!--with a subversion client -->as follows:]
<!--    <pre class="codeSample">svn checkout http://twitter4j.org/svn/twitter4j/trunk twitter4j</pre>-->
    <pre class="codeSample">git clone git://github.com/yusuke/twitter4j.git</pre>
</tag:h2>
<tag:h2 name="maven" title="$[ja:Maven 統合]$[en:Maven Integration]">
$[ja:Maven を使っている場合、pom.xml に以下のように記載すればご自身のプロジェクトに twitter4j の最新安定ビルドを簡単に統合できます。]
$[en:You can integrate the latest Twitter4J build easily by just including the following lines in your pom.xml.]
<pre class="codeSample">   &lt;repositories&gt;
      &lt;repository&gt;
         &lt;id&gt;twitter4j.org&lt;/id&gt;
         &lt;name&gt;twitter4j.org Repository&lt;/name&gt;
         &lt;url&gt;http://twitter4j.org/maven2&lt;/url&gt;
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
         &lt;groupId&gt;org.twitter4j&lt;/groupId&gt;
         &lt;artifactId&gt;twitter4j-core&lt;/artifactId&gt;
         &lt;version&gt;[3.0,)&lt;/version&gt;
      &lt;/dependency&gt;
   &lt;/dependencies&gt;</pre>

$[ja:Maven Central Repository を使いたい場合、pom.xml に以下のように記載してください。]
$[en:If you prefer the Maven central repository, include the following lines to your pom.xml.]
<pre class="codeSample">   &lt;dependencies&gt;<br/>      &lt;dependency&gt;<br/>           &lt;groupId&gt;org.twitter4j&lt;/groupId&gt;<br/>           &lt;artifactId&gt;twitter4j-core&lt;/artifactId&gt;<br/>           &lt;version&gt;[3.0,)&lt;/version&gt;<br/>       &lt;/dependency&gt;<br/>       ...<br/>   &lt;/dependencies&gt;<br/></pre>
</tag:h2>
<tag:h2 name="mailingList" title="$[ja:メーリングリスト]$[en:Mailing list]">
    $[ja:Twitter4J に関する質問、バグレポート、リクエストなどありましたら以下のメーリングリストにお気軽にどうぞ。<br>
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
非常にやりとりが活発な英語版の購読もお勧めします。
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
</table>]
    $[en:Any question, comment, bug report, feature request or patch is highly welcomed.<br>
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
]
</tag:h2>
<tag:h2 name="license" title="$[ja:ライセンス]$[en:License]">
$[ja:Twitter4J は Apache License 2.0 に基づいてリリースされています。<br>]
$[en:Twitter4J is released under Apache License 2.0.<br>]
<hr/>
<pre class="codeSample">Copyright 2007 Yusuke Yamamoto

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
Distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.</pre>
$[ja:Twitter4J は JSON レスポンスの解析のため JSON.org のソフトウェアを含んでいます。JSON.org のソフトウェアのライセンスについては<a href="http://www.JSON.org/license.html">The JSON License</a>をご覧ください。<br>]
$[en:Twitter4J includes software from JSON.org to parse JSON response from the Twitter API. You can see the license term at <a href="http://www.JSON.org/license.html">The JSON License</a>.<br>]
</tag:h2>
<tag:h2 name="donation" title="$[ja:寄付]$[en:Donation]">
$[ja:Twitter4J はどなたでも商用、非商用にかかわらず無償でご利用いただけます。<br>
もし Twitter4J があなたの生活を豊かにしてくれると感じたならば、寄付もご検討ください。<br>
現在の所、寄付金は主にサーバの電気代に利用されています。<br><br>
]
$[en:Twitter4J is an opensourced software and free of charge.<br>
You can use Twitter4J freely for any commercial and non-commercial projects.<br>
If you feel Twitter4J makes your life easier, please do consider making a donation!<br>
<br>]
</tag:h2>
<include>paypal.html</include>
<br>
<br>
<br>
</tag:skelton>