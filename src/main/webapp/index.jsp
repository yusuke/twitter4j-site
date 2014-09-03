<%@page pageEncoding="UTF-8" session="false"%><%@taglib prefix="tag" tagdir="/WEB-INF/tags" %><tag:skelton
title="Twitter4J - A Java library for the Twitter API"
description="$[ja:Twitter4J は <a href='https://dev.twitter.com/docs'>Twitter API</a> の Java ラッパです。<br>
    Twitter4J を使うと JSON や HTTP に詳しくなくても容易に Twitter とインタラクトするアプリケーションを書くことが出来ます。Twitter4J は Twitter 非公式のライブラリです。]
$[en:Twitter4J is an unofficial Java library for the <a href='https://dev.twitter.com/docs'>Twitter API</a>.<br>
    With Twitter4J, you can easily integrate your Java application with the Twitter service. Twitter4J is an unofficial library.<br>
    <br>Twitter4J is featuring:]
$[ko:Twitter4J 는 <a href='https://dev.twitter.com/docs'>Twitter API</a> 의 Java Wraper 입니다.<br>
    Twitter4J 를 사용하면 JSON 이나 HTTP에 자세하지 않아도 쉽게 Twitter와 상호 작용하는 응용 프로그램을 작성 할 수 있습니다. Twitter4J는 Twitter 비공식 라이브러리입니다.]"
path="http://twitter4j.org/$[ja:ja]$[en:en]$[ko:ko]/index.html">

<tag:h2 name="introduction" title="$[ja:Twitter4Jとは？]$[en:Introduction]$[ko:Twitter4J 는?]">
$[ja:Twitter4J は <a href="https://dev.twitter.com/docs">Twitter API</a> の Java ラッパです。<br>
    Twitter4J を使うと JSON や HTTP に詳しくなくても容易に Twitter とインタラクトするアプリケーションを書くことが出来ます。Twitter4J は Twitter 非公式のライブラリです。]
$[en:Twitter4J is an unofficial Java library for the <a href="https://dev.twitter.com/docs">Twitter API</a>.<br>
    With Twitter4J, you can easily integrate your Java application with the Twitter service. Twitter4J is an unofficial library.<br>
    <br>Twitter4J is featuring:]
$[ko:Twitter4J 는 <a href='https://dev.twitter.com/docs'>Twitter API</a> 의 Java Wraper 입니다.<br>
    Twitter4J 를 사용하면 JSON 이나 HTTP에 자세하지 않아도 쉽게 Twitter와 상호 작용하는 응용 프로그램을 작성 할 수 있습니다. Twitter4J는 Twitter 비공식 라이브러리입니다.]
<br>
<font color="green">✔</font> 100% Pure Java - works on any Java Platform version 5 or later<br>
<font color="green">✔</font> $[en:<a href="http://code.google.com/android/">Android</a> platform and <a href="http://code.google.com/appengine/">Google App Engine</a> ready]$[ja:<a href="http://code.google.com/android/">Android</a> や<a href="http://code.google.com/appengine/">Google App Engine</a>上でも動作します]$[ko:<a href="http://code.google.com/android/">Android</a> 와<a href="http://code.google.com/appengine/">Google App Engine</a>상에서도 동작합니다.]<br>
<font color="green">✔</font> $[en:Zero dependency : No additional jars required]$[ja:依存なし : 追加の jar ファイルなどは必要ありません]$[ko:의존성 없음 : 추가 jar 파일등은 필요하지 않습니다.]<br>
<font color="green">✔</font> $[en:Built-in OAuth support]$[ja:OAuth に対応]$[ko:OAuth 에 대응]<br>
<font color="green">✔</font> $[en:Out-of-the-box gzip support]$[ja:デフォルトで gzip をサポートするため高速]$[ko:디폴트로 gzip 를 서포트 하기 때문에 빠름]<br>
<font color="green">✔</font> $[en:100% Twitter API 1.1 compatible]$[ja:Twitter API 1.1に完全対応]$[ko:Twitter API 1.1 에 완전 대응]<br>
</tag:h2>
<tag:h2 name="systemRequirements" title="$[ja:システム要件]$[en:System Requirements]$[ko:시스템 요구조건]">
    $[ja:OS: Java をサポートする Windows または Unix 系 OS<br>
JVM: Java 5 またはそれ以降]
$[en:OS: Windows or any flavor of Unix that supports Java.<br>
JVM: Java 5 or later]
$[ko:OS: Java 을 서포트하는 Windows 또는 Unix 계 OS<br>
JVM: Java 5 또는 그 이후 버전]
</tag:h2>
<tag:h2 name="howToUse" title="$[ja:使い方]$[en:How To Use]$[ko:사용법]">
    $[ja:twitter4j-core-<include>latest-version.fragment</include>.jar をクラスパスに通して、好きなメソッドを呼び出してください。<br>
    Java が分かっていれば <a href="/javadoc/index.html">JavaDoc</a> を見るのが早いです。<br>
    twitter4j.<a href="javadoc/twitter4j/Twitter.html">Twitter</a> クラスが最初に見るべきインターフェースです。]
    $[en:Just add twitter4j-core-<include>latest-version.fragment</include>.jar to your application classpath.<br>
    If you are familiar with Java language, looking into the <a href="/javadoc/index.html">JavaDoc</a> should be the shortest way for you to get started.<br>
    <a href="javadoc/twitter4j/Twitter.html">twitter4j.Twitter</a> interface is the one you may want to look at first.]
    $[ko:twitter4j-core-3.0.3.jar 을 ClassPath 에 등록하고, 호출하고 싶은 메소드를 호출해 주십시오.<br>
    Java 를 알고 있다면 <a href="/javadoc/index.html">JavaDoc</a> 을 보는게 이해하기 빠릅니다.<br>
    twitter4j.<a href="javadoc/twitter4j/Twitter.html">Twitter</a> 클래스가 맨처음 봐야하는 인터페이스입니다.]
</tag:h2>
<tag:h2 name="download" title="$[ja:ダウンロード]$[en:Download]$[ko:다운로드]">
･$[ja:最新安定バージョン]$[en:Latest stable version]$[ko:최신 안정 버전]<br>
<a href="http://twitter4j.org/archive/twitter4j-<include>latest-version.fragment</include>.zip"><img alt="$[ja:ダウンロード]$[en:Download]$[ko:다운로드]" title="$[ja:ダウンロード]$[en:Download]$[ko:다운로드]" class="download" src="./images/download.jpg"></a><br>
    <a href="http://twitter4j.org/archive/twitter4j-<include>latest-version.fragment</include>.zip">twitter4j-<include>latest-version.fragment</include>.zip</a> / <a href="/javadoc/index.html">JavaDoc</a><br>
    <%--strike>twitter4j-android-<include>latest-version.fragment</include>.zip</strike>($[ja:バージョン3.0.3で通常バージョンが十分にスリム化されたためAndroid向けビルドは廃止されました。通常バージョンをお使いください。]$[en:Regular version got slimmed down from version 3.0.3. Thus build for Android platform was retired. Use regular version instead.]$[ko:버전 3.0.3에서 보통 버전이 충분히 슬림화 되었기 때문에 Android 대상 빌드는 폐지되었습니다. 보통버전을 사용하여 주십시오.])<br--%>
<br><a name="snapshot"></a>･$[ja:最新スナップショットビルド]$[en:Latest snapshot build]$[ko:최신 스냅 샷 빌드]<br><a href="http://twitter4j.org/archive/twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip"><img alt="$[ja:ダウンロード]$[en:Download]$[ko:다운로드]" title="$[ja:ダウンロード]$[en:Download]$[ko:다운로드]" class="download" src="./images/download.jpg"></a><br>
    <a href="http://twitter4j.org/archive/twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip">twitter4j-<include>latest-SNAPSHOT-version.fragment</include>.zip</a> / <a href="./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">JavaDoc</a><br>
    <%--strike>twitter4j-android-<include>latest-SNAPSHOT-version.fragment</include>.zip</strike>($[ja:バージョン3.0.3で通常バージョンが十分にスリム化されたためAndroid向けビルドは廃止されました。通常バージョンをお使いください。]$[en:Regular version got slimmed down from version 3.0.3. Thus build for Android platform was retired. Use regular version instead.]$[ko:버전3.0.3에서 보통 버전이 충분히 슬림화 되었기 때문에 Android 대상 빌드는 폐지되었습니다. 보통버전을 사용하여 주십시오.])<br--%>

<%--    <a href="http://twitter4j.org/en/twitter4j-android-<include>latest-version.fragment</include>.zip">twitter4j-android-<include>latest-version.fragment</include>.zip</a> (slimmed version for Android platform)<br>--%>
</tag:h2>
<tag:h2 name="sourceCode" title="$[ja:ソースコード]$[en:Source Code]$[ko:소스코드]">
    $[ja:アーカイブにはソースコードが含まれています。<br>
    プロジェクトのリポジトリには以下の URL からアクセスできます。]
    $[en:The archive contains jar file along with source code.<br>
    You can also browse the project repository at:]
    $[ko:다운로드 파일에는 소스코드가 포함되어 있습니다.<br>
    프로젝트의 Repository 에는 이하의 URL로 접속가능합니다.]
<!--    <pre class="codeSample">Fisheye: <a href="http://twitter4j.org/fisheye/browse/twitter4j">http://twitter4j.org/fisheye/browse/twitter4j</a></pre>-->
    <pre class="codeSample">github: <a href="http://github.com/yusuke/twitter4j/">http://github.com/yusuke/twitter4j/</a></pre>

    $[ja:または以下のように<!-- subversion クライアント、または--> git を使って最新のソースコードをチェックアウトすることもできます。]
    $[en: Or you can check out the latest source code anonymously <!--with a subversion client -->as follows:]
    $[ko:또는 아래처럼<!-- subversion 클라이언트, 또는 --> git 을 사용해 최신의 소스코드를 체크아웃하는게 가능합니다.]
<!--    <pre class="codeSample">svn checkout http://twitter4j.org/svn/twitter4j/trunk twitter4j</pre>-->
    <pre class="codeSample">git clone git://github.com/yusuke/twitter4j.git</pre>
</tag:h2>
<tag:h2 name="maven" title="$[ja:Maven 統合]$[en:Maven Integration]$[ko:Maven 통합]">
$[ja:Maven を使っている場合、pom.xml に以下のように記載すればご自身のプロジェクトに twitter4j の最新安定ビルドを簡単に統合できます。]
$[en:You can integrate the latest Twitter4J build easily by just including the following lines in your pom.xml.]
$[ko:Maven 을 사용하는 경우, pom.xml 에 아래처럼 기술하면 자신의 프로젝트에 twitter4j 의 최신안정빌드를 간단하게 통합 가능합니다.]
<pre class="codeSample">   &lt;dependencies&gt;<br/>      &lt;dependency&gt;<br/>           &lt;groupId&gt;org.twitter4j&lt;/groupId&gt;<br/>           &lt;artifactId&gt;twitter4j-core&lt;/artifactId&gt;<br/>           &lt;version&gt;[4.0,)&lt;/version&gt;<br/>       &lt;/dependency&gt;<br/>       ...<br/>   &lt;/dependencies&gt;<br/></pre>

$[ja:最新Snapshot build を使いたい場合、pom.xml に以下のように記載してください。]
$[en:If you prefer using the latest snapshot build, include the following lines to your pom.xml.]
$[ko:Snapshot buildSnapshot build 를 사용하고 싶은 경우, pom.xml 에 아래처럼 기술해 주십시오.]
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
         &lt;version&gt;[4.0,)&lt;/version&gt;
      &lt;/dependency&gt;
   &lt;/dependencies&gt;</pre>
</tag:h2>
<tag:h2 name="mailingList" title="$[ja:メーリングリスト]$[en:Mailing list]$[ko:메일링리스트]">
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
    	$[ko:Twitter4J 에 관한 질문, 버그리포트, 요청 등이 있다면, 아래의 메일링리스트에 가볍게 보내주십시오.<br>
<table border=0 style="background-color: #fff; padding: 5px;" cellspacing=0>
  <tr><td>
    <img src="http://groups.google.com/groups/img/3/groups_bar_ja.gif"
         height=26 width=132 alt="Google グループ">
  </td></tr>
  <tr><td style="padding-left: 5px"> <b>Twitter4J J에 참가</b> </td></tr>
  <form action="http://groups.google.com/group/twitter4j-j/boxsubscribe">
  <tr><td style="padding-left: 5px;"> E-Mail 주소: <input type=text name=email>
           <input type=submit name="sub" value="등록">
  </td></tr>
</form>
<tr><td align=right> <a href="http://groups.google.com/group/twitter4j-j">이 그룹에 접속</a> </td></tr>
</table>
토론이 상당히 활발한 영어판 구독도 추천합니다.
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
</tag:h2>
<tag:h2 name="license" title="$[ja:ライセンス]$[en:License]$[ko:라이센스]">
$[ja:Twitter4J は Apache License 2.0 に基づいてリリースされています。<br>]
$[en:Twitter4J is released under Apache License 2.0.<br>]
$[ko:Twitter4J 는 Apache License 2.0 에 준하여 릴리스되고 있습니다.<br>]
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
$[ko:Twitter4J 는 JSON response 의 분석을 위한 JSON.org 의 소프트웨어를 포함하고 있습니다. JSON.org 의 소프트웨어 라이센스에 대해서는 <a href="http://www.JSON.org/license.html">The JSON License</a>를 참조하십시오.<br>]
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
$[ko:Twitter4J 는 누구든 상용, 비상용에 상관없이 무상으로 이용할 수 있습니다.<br>
만약 Twitter4J 가 당신의 생활을 풍족하게 해준다고 느꼈다면, 기부도 검토해 주십시오.<br>
현재, 기부금은 주로 서버의 전기사용료에 사용되고 있습니다.<br><br>
]
</tag:h2>
<include>paypal.html</include>
<br>
<br>
<br>
</tag:skelton>
