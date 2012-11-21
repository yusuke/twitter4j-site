<%@page pageEncoding="UTF-8" session="false"%><%@taglib prefix="tag" tagdir="/WEB-INF/tags" %><tag:skelton title="Twitter4J - $[ja:開発]$[en:Development]">
    <tag:h2 name="whodevelop" title="$[ja:開発者について]$[en:Who develop Twitter4J?]">
    <p>$[ja:Twitter4J はコミュニティメンバにより開発されています。 プロジェクトのネットワークは <a href="http://github.com/yusuke/twitter4j/network">github.com</a> で確認できます。]$[en:Twitter4J is developed by its community members. You can check the project network graph at <a href="http://github.com/yusuke/twitter4j/network">github.com</a>.]
    </p>
    </tag:h2>
    <tag:h2 name="join-development" title="$[ja:開発に参加する]$[en:Join the development]">
    <p>$[ja:コードのコントリビュートを行う場合は以下の手順に従ってください。]$[en:To contribute your code, follow the instructions below.]
<ol class="main">
<li><h3>$[ja:メーリングリストに報告する]$[en:Report to the mailing list]</h3></li>
$[ja:バグや機能追加要求について<a href="http://twitter4j.org/ja/index.html#mailingList">メーングリスト</a>に報告します。もし報告する現象が既知の問題でなく、確実にバグと考えられる場合このステップは省略しても構いません。]$[en:Report the bug, or the feature request to <a href="http://twitter4j.org/en/index.html#mailingList">the mailing list.</a> If you are sure that the issue is not a known or a duplicated one, you can skip this step and go to step 2.]
<li><h3>$[ja:課題を登録]$[en:Submit the issue]</h3></li>
$[ja:課題を <a href="http://jira.twitter4j.org/browse/TFJ">JIRA</a> に登録します。]$[en:Submit the issue to <a href="http://jira.twitter4j.org/browse/TFJ">JIRA</a>. Set the fixed version to the latest snapshot (<include>latest-SNAPSHOT-version.fragment</include>)]
<li><h3>$[ja:ソースコードを修正する]$[en:Fix it]</h3></li>
$[ja:必要なソースファイルを修正します。以下の点を気をつけてください:
]$[en:Fix the source code accordingly. Make sure that:]
<ul>
  <li>$[ja:コードが<a href="#codingconvention">コーディング規約</a>に準拠していること]$[en:The code meets the <a href="#codingconvention">coding convention</a>]</li>
  <li>$[ja:JUnit テストケースが変更に含まれていること]$[en:JUnit test case is included in the change]</li>
  <li>$[ja:コミットログに issue# (TFJ-***) が含まれていること]$[en:The issue# (TFJ-***) is included in the commit log]</li>
  <li>$[ja:新規に作成されたファイルは@authorタグと<a href="./index.html#license">ライセンス条文</a>が含まれていること]$[en:newly created files contain @author tag and <a href="./index.html#license">the terms of license</a>]</li>
</ul>
<li><h3>$[ja:pull request を送る]$[en:Send a pull request]</h3></li>
$[ja:pull request を <a href="https://github.com/yusuke">yusuke</a> に送ります。]$[en:Send a pull request to <a href="https://github.com/yusuke">the upstream repository</a>]
<li><h3>$[ja:マージとクローズ]$[en:Merge and close]</h3></li>
$[ja:マージが完了し、テストケースが通ると issue はクローズされます。]$[en:The Jira issue will be closed once the pull request was merged and all test cases were passed.]

</ol>
    </p>
    </tag:h2>
    <tag:h2 name="codingconvention" title="$[ja:コーディング規約]$[en:Coding convention]">
    <p>$[ja:ソースコードは可能な限り <a href="http://www.oracle.com/technetwork/java/codeconvtoc-136057.html">Code Conventions for the Java(TM) Programming Language</a> を尊重してください。<br>
    また、Twitter4J は JDK1.4.2 と互換性を持つように設計されているため Java5 以降で導入されたAPIは利用しません。JDK1.4.2 でサポートされない使ってしまいがちな API は以下の通りです:]$[en:Source code need to respect <a href="http://www.oracle.com/technetwork/java/codeconvtoc-136057.html">Code Conventions for the Java(TM) Programming Language</a> as much as possible. <br>Use of APIs introduced at Java 5+ is not allowed since Twitter4J is desigined to be compatible with JDK 1.4.2. APIs frequently used to brake the compatibility with JDK 1.4.2 are as follows:]
<pre class="codeSample">   String#contains()
   String#split()
   StringBuilder
   $[ja:アノテーション]$[en:annotations]
   enum
   JUnit 4.x $[ja:ベースのテストケース]$[en:based test cases]
</pre>
    </p>
    </tag:h2>
    <tag:h2 name="issuemanagement" title="$[ja:課題管理]$[en:Issue management]">
    <p>$[ja:Twitter4J はアトラシアン社の提供する課題管理ツール、<a href="http://jira.twitter4j.org/browse/TFJ">JIRA</a> を使ってバグ管理を行っています。]$[en:Atlassian supports our efforts by contributing their bug tracking and issue tracking application, <a href="http://jira.twitter4j.org/browse/TFJ">JIRA</a>, to our project.<br>
<br>
Atlassian is an innovative Australian software company providing enterprise software solutions to the world's leading organisations. Atlassian's leading software product, JIRA is a bug tracking and issue tracking application developed to track and manage the issues and bugs that emerge during a project. JIRA customers include departments from NASA, Boeing, Cisco, JP Morgan, 3M, BP, Sony and more. <a href="http://www.atlassian.com/c/NPOS/10160">Try it</a> for yourself today.<br>
]
    </p>
<br><a href="http://www.atlassian.com/c/NPOS/10160"><img src="./images/jira_button_120wx60h.gif" width="120" height="60"/></a>
    </tag:h2>
    <tag:h2 name="continuousintegration" title="$[ja:継続ビルド]$[en:Continuous Integration]">
    <p>$[ja:Twitter4Jは継続ビルドに <a href="http://jenkins.twitter4j.org/job/T4J/">Jenkins</a> を使っています。]$[en:Twitter4J is built continuously by <a href="http://jenkins.twitter4j.org/job/T4J/">Jenkins</a>.]
    </p>
    <a href="http://jenkins-ci.org/"><img src="./images/butler50.png" border="0"></a>
    </tag:h2>
    <tag:h2 name="ide" title="IDE">
    <p>$[ja:Twitter4J は Maven ベースのプロジェクトなので好きな IDE を利用することができます。JetBrains は Twitter4J.org に IntelliJ IDEA の Open Source Project License を提供しています。パッチを書いたことのある方はこの IntelliJ IDEA のライセンスファイルを使うことができます。詳しくは <script>document.write(new Array("com",".","mac","@","yusuke").reverse().join(""));</script> までお問い合わせください。]$[en:Twitter4J is a Mavenized project and you can use any IDE to play with Twitter4J. JetBrains is offering an Open Source Project License of IntelliJ IDEA to Twitter4J.org. Anyone who has contributed a patch can get access to the license file for improving Twitter4J. Please ask <script>document.write(new Array("com",".","mac","@","yusuke").reverse().join(""));</script> for more information.]<br>
<br><a href="http://www.jetbrains.com/idea/features/html_css_editor.html" style="display:block; background:#fff url(http://www.jetbrains.com/idea/opensource/img/all/banners/idea234x60_white.gif) no-repeat 0 0; border:solid 1px #0d3a9e; margin:0;padding:0;text-decoration:none;text-indent:0;letter-spacing:-0.001em; width:252px; height:58px" alt="Smart Java IDE. Web development ready. Neat HTML and CSS refactorings and more" title="Smart Java IDE. Web development ready. Neat HTML and CSS refactorings and more"><span style="margin: -3px 0 0 41px;padding: 0;float: left;font-size: 10px;cursor:pointer;  background-image:none;border:0;color: #0d3a9e; font-family: trebuchet ms,arial,sans-serif;font-weight: normal;text-align:left;">Developed with</span><span style="margin:33px 0 0 7px;padding:0 0 2px 0; line-height:12px;font-size:11px;cursor:pointer;  background-image:none;border:0;display:block;width:240px; color:#0d3a9e; font-family:trebuchet ms,arial,sans-serif;font-weight: normal;text-align:left;">Smart Java IDE. Web development ready. <br/>Neat HTML and CSS refactorings and more</span></a>
    </p>
    </tag:h2>
</tag:skelton>