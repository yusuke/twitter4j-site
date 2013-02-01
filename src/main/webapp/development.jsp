<%@page pageEncoding="UTF-8" session="false" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - $[ja:開発]$[en:Development]"
             description="$[ja:Twitter4Jの開発を行う、コントリビュートをする上でのルールなど]$[en:Start contributing to Twitter4J today!]"
             path="http://twitter4j/$[ja:ja]$[en:en]/development.html">

≈    <tag:h2 name="whodevelop" title="$[ja:開発者について]$[en:Who develop Twitter4J?]">
        <p>$[ja:Twitter4J はコミュニティメンバにより開発されています。 プロジェクトのネットワークは <a href="http://github.com/yusuke/twitter4j/network">github.com</a>
            で確認できます。]$[en:Twitter4J is developed by its community members. You can check the project network graph at <a
                    href="http://github.com/yusuke/twitter4j/network">github.com</a>.]
        </p>
    </tag:h2>
    <tag:h2 name="join-development" title="$[ja:開発に参加する]$[en:Join the development]">
        <p>$[ja:コードのコントリビュートを行う場合は以下の手順に従ってください。]$[en:To contribute your code, follow the instructions below.]
        <ol class="main">
            <li><h3>$[ja:メーリングリストに報告する]$[en:Report to the mailing list]</h3></li>
            $[ja:バグや機能追加要求について<a href="http://twitter4j.org/ja/index.html#mailingList">メーングリスト</a>に報告します。もし報告する現象が既知の問題でなく、確実にバグと考えられる場合このステップは省略しても構いません。]$[en:Report
            the bug, or the feature request to <a href="http://twitter4j.org/en/index.html#mailingList">the mailing
            list.</a> If you are sure that the issue is not a known or a duplicated one, you can skip this step and go
            to step 2.]
            <li><h3>$[ja:課題を登録]$[en:Submit the issue]</h3></li>
            $[ja:課題を <a href="http://jira.twitter4j.org/browse/TFJ">JIRA</a> に登録します。]$[en:Submit the issue to <a
                href="http://jira.twitter4j.org/browse/TFJ">JIRA</a>. Set the fixed version to the latest snapshot (
            <include>latest-SNAPSHOT-version.fragment</include>
            )]
            <li><h3>$[ja:ソースコードを修正する]$[en:Fix it]</h3></li>
            $[ja:必要なソースファイルを TFJ-XXX という名前のブランチで修正します。以下の点を気をつけてください:
            ]$[en:Fix the source code accordingly in a branch named TFJ-XXX. Make sure that:]
            <ul>
                <li>$[ja:コードが<a href="#codingconvention">コーディング規約</a>に準拠していること]$[en:The code meets the <a
                        href="#codingconvention">coding convention</a>]
                </li>
                <li>$[ja:JUnit テストケースが変更に含まれていること]$[en:JUnit test case is included in the change]</li>
                <li>$[ja:コミットログに issue# (TFJ-***) が含まれていること]$[en:The issue# (TFJ-***) is included in the commit log]
                </li>
                <li>$[ja:新規に作成されたファイルは@authorタグと<a href="./index.html#license">ライセンス条文</a>が含まれていること]$[en:newly created
                    files contain @author tag and <a href="./index.html#license">the terms of license</a>]
                </li>
                <li>$[ja:初めてコントリビュートする場合は<a
                        href="https://github.com/yusuke/twitter4j/blob/master/readme.txt">readme.txt</a>に名前、メールアドレス、Twitterアカウントが含まれていること]$[en:your
                    name, email address and Twitter account is included in <a
                            href="https://github.com/yusuke/twitter4j/blob/master/readme.txt">readme.txt</a>]
                </li>
            </ul>
            <li><h3>$[ja:pull request を送る]$[en:Send a pull request]</h3></li>
            $[ja:pull request を <a href="https://github.com/yusuke">yusuke</a> に送ります。]$[en:Send a pull request to <a
                href="https://github.com/yusuke">the upstream repository</a>]
            <li><h3>$[ja:マージとクローズ]$[en:Merge and close]</h3></li>
            $[ja:マージが完了し、テストケースが通ると issue はクローズされます。]$[en:The Jira issue will be closed once the pull request was merged
            and all test cases were passed.]

        </ol>
        </p>
    </tag:h2>
    <tag:h2 name="codingconvention" title="$[ja:コーディング規約]$[en:Coding convention]">
        <p>$[ja:ソースコードは可能な限り <a href="http://www.oracle.com/technetwork/java/codeconvtoc-136057.html">Code Conventions
            for the Java(TM) Programming Language</a> を尊重してください。ただしインデントはスペース4つです。<br>
            また、Twitter4J は Java 5 と互換性を持つように設計されているため Java 6 以降で導入されたAPIは利用しません。]$[en:Source code need to respect <a
                    href="http://www.oracle.com/technetwork/java/codeconvtoc-136057.html">Code Conventions for the
                Java(TM) Programming Language</a> as much as possible. And indentation is four spaces.<br>Use of APIs
            introduced at Java 6+ is not allowed since Twitter4J is desigined to be compatible with Java 5.]
        </p>
    </tag:h2>
    <tag:h2 name="issuemanagement" title="$[ja:課題管理]$[en:Issue management]">
        <p>$[ja:Twitter4J はアトラシアン社の提供する課題管理ツール、<a href="http://jira.twitter4j.org/browse/TFJ">JIRA</a>
            を使ってバグ管理を行っています。]$[en:Atlassian supports our efforts by contributing their bug tracking and issue tracking
            application, <a href="http://jira.twitter4j.org/browse/TFJ">JIRA</a>, to our project.<br>
            <br>
            Atlassian is an innovative Australian software company providing enterprise software solutions to the
            world's leading organisations. Atlassian's leading software product, JIRA is a bug tracking and issue
            tracking application developed to track and manage the issues and bugs that emerge during a project. JIRA
            customers include departments from NASA, Boeing, Cisco, JP Morgan, 3M, BP, Sony and more. <a
                    href="http://www.atlassian.com/c/NPOS/10160">Try it</a> for yourself today.<br>
            ]
        </p>
        <br><a href="http://www.atlassian.com/c/NPOS/10160"><img src="./images/jira_button_120wx60h.gif" width="120"
                                                                 height="60"/></a>
    </tag:h2>
    <tag:h2 name="continuousintegration" title="$[ja:継続ビルド]$[en:Continuous Integration]">
        <p>$[ja:Twitter4Jは継続ビルドに <a href="http://jenkins.twitter4j.org/job/T4J/">Jenkins</a> を使っています。]$[en:Twitter4J is
            built continuously by <a href="http://jenkins.twitter4j.org/job/T4J/">Jenkins</a>.]
        </p>
        <a href="http://jenkins-ci.org/"><img src="./images/butler50.png" border="0"></a>
    </tag:h2>
    <tag:h2 name="ide" title="IDE">
        <p>$[ja:Twitter4J は Maven ベースのプロジェクトなので好きな IDE を利用することができます。JetBrains は Twitter4J.org に IntelliJ IDEA の Open
            Source Project License を提供しています。パッチを書いたことのある方はこの IntelliJ IDEA のライセンスファイルを使うことができます。詳しくは
            <script>document.write(new Array("com", ".", "mac", "@", "yusuke").reverse().join(""));</script>
            までお問い合わせください。]$[en:Twitter4J is a Mavenized project and you can use any IDE to play with Twitter4J.
            JetBrains is offering an Open Source Project License of IntelliJ IDEA to Twitter4J.org. Anyone who has
            contributed a patch can get access to the license file for improving Twitter4J. Please ask
            <script>document.write(new Array("com", ".", "mac", "@", "yusuke").reverse().join(""));</script>
            for more information.]<br>
            <br><a href="http://www.jetbrains.com/idea/features/code_analysis.html"
                   style="display:block; background:#fff url(http://www.jetbrains.com/idea/opensource/img/all/banners/idea468x60_white.gif) no-repeat 10px 50%; border:solid 1px #0d3a9e; margin:0;padding:0;text-decoration:none;text-indent:0;letter-spacing:-0.001em; width:466px; height:58px"
                   alt="Java IDE with unparalleled java code analyzer (600+ built-in inspections)"
                   title="Java IDE with unparalleled java code analyzer (600+ built-in inspections)"><span
                    style="margin: 5px 0 0 51px;padding: 0;float: left;font-size: 12px;cursor:pointer;  background-image:none;border:0;color: #0d3a9e; font-family: trebuchet ms,arial,sans-serif;font-weight: normal;text-align:left;">Can't code without</span><span
                    style="margin:0 0 0 205px;padding:18px 0 2px 0; line-height:13px;font-size:13px;cursor:pointer;  background-image:none;border:0;display:block; width:255px; color:#0d3a9e; font-family: trebuchet ms,arial,sans-serif;font-weight: normal;text-align:left;">Java IDE with unparalleled java code <br/>analyzer (600+ built-in inspections)</span></a>
        </p>
    </tag:h2>
</tag:skelton>