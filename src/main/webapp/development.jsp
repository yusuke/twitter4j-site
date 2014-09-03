<%@page pageEncoding="UTF-8" session="false" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - $[ja:開発]$[en:Development]$[ko:개발]"
             description="$[ja:Twitter4Jの開発を行う、コントリビュートをする上でのルールなど]$[en:Start contributing to Twitter4J today!]$[ko:Twitter4J 의 개발을 하고, contribute 하는 사이의 룰 등]"
             path="http://twitter4j.org/$[ja:ja]$[en:en]$[ko:ko]/development.html">

≈    <tag:h2 name="whodevelop" title="$[ja:開発者について]$[en:Who develop Twitter4J?]$[ko:개발자에 대해서]">
        <p>$[ja:Twitter4J はコミュニティメンバにより開発されています。 プロジェクトのネットワークは <a href="http://github.com/yusuke/twitter4j/network">github.com</a>
            で確認できます。]$[en:Twitter4J is developed by its community members. You can check the project network graph at <a
                    href="http://github.com/yusuke/twitter4j/network">github.com</a>.]$[ko:Twitter4J 는 커뮤니티 멤버에 의해 개발되고 있습니다. 프로젝트의 네트워크는 <a href="http://github.com/yusuke/twitter4j/network">github.com</a>
            에서 확인 가능합니다.]
        </p>
    </tag:h2>
    <tag:h2 name="join-development" title="$[ja:開発に参加する]$[en:Join the development]$[ko:개발에 참가하기]">
        <p>$[ja:コードのコントリビュートを行う場合は以下の手順に従ってください。]$[en:To contribute your code, follow the instructions below.]$[ko:코드를 contribute 하는 경우에는 아래의 순에서 따라주십시오.]
        <ol class="main">
            <li><h3>$[ja:メーリングリストに報告する]$[en:Report to the mailing list]$[ko:메일링리스트에 보고한다.]</h3></li>
            $[ja:バグや機能追加要求について<a href="http://twitter4j.org/ja/index.html#mailingList">メーングリスト</a>に報告します。もし報告する現象が既知の問題でなく、確実にバグと考えられる場合このステップは省略しても構いません。]$[en:Report
            the bug, or the feature request to <a href="http://twitter4j.org/en/index.html#mailingList">the mailing
            list.</a> If you are sure that the issue is not a known or a duplicated one, you can skip this step and go
            to step 2.]$[ko:버그나 기능추가요구에 대해서<a href="http://twitter4j.org/ja/index.html#mailingList">메일링리스트</a>에 보고합니다. 만약 보고하는 현상이 알려진 문제가 아니라, 확실히 버그라고 생각되는 경우에 이 스텝을 생략해도 상관없습니다.]
            <li><h3>$[ja:課題を登録]$[en:Submit the issue]$[ko:이슈를 등록]</h3></li>
            $[ja:課題を <a href="http://issue.twitter4j.org/youtrack/issues/TFJ">YouTrack</a> に登録します。]$[en:Submit the issue to <a href="http://issue.twitter4j.org/youtrack/issues/TFJ">YouTrack</a>. Set the fixed version to the latest snapshot (
            <include>latest-SNAPSHOT-version.fragment</include>
            )]$[ko:이슈를 <a href="http://issue.twitter4j.org/youtrack/issues/TFJ">YouTrack</a> 에 등록합니다.]
            <li><h3>$[ja:ソースコードを修正する]$[en:Fix it]$[ko:소스코드를 수정한다.]</h3></li>
            $[ja:必要なソースファイルを TFJ-XXX という名前のブランチで修正します。以下の点を気をつけてください:
            ]$[en:Fix the source code accordingly in a branch named TFJ-XXX. Make sure that:]$[ko:필요한 소스파일을 TFJ-XXX 라고 하는 이름의 브런치에서 수정합니다. 이하의 점에 주의하여 주십시오.:
            ]
            <ul>
                <li>$[ja:コードが<a href="#codingconvention">コーディング規約</a>に準拠していること]$[en:The code meets the <a
                        href="#codingconvention">coding convention</a>]$[ko:코드가<a href="#codingconvention">coding convention</a>을 준수하고 있을것]
                </li>
                <li>$[ja:JUnit テストケースが変更に含まれていること]$[en:JUnit test case is included in the change]$[ko:JUnit test case 가 변경점에 포함되어 있을것]</li>
                <li>$[ja:コミットログに issue# (TFJ-***) が含まれていること]$[en:The issue# (TFJ-***) is included in the commit log]$[ko:commit log 에 issue# (TFJ-***) 가 포함되어 있을것]
                </li>
                <li>$[ja:新規に作成されたファイルは@authorタグと<a href="./index.html#license">ライセンス条文</a>が含まれていること]$[en:newly created
                    files contain @author tag and <a href="./index.html#license">the terms of license</a>]$[ko:신규로 작성된 파일은 @author 태그와 <a href="./index.html#license">라이센스 안내문</a>이 포함되어 있을것]
                </li>
                <li>$[ja:初めてコントリビュートする場合は<a
                        href="https://github.com/yusuke/twitter4j/blob/master/readme.txt">readme.txt</a>に名前、メールアドレス、Twitterアカウントが含まれていること]$[en:your
                    name, email address and Twitter account is included in <a
                            href="https://github.com/yusuke/twitter4j/blob/master/readme.txt">readme.txt</a>]$[ko:처음으로 contribute 할 경우는 <a
                        href="https://github.com/yusuke/twitter4j/blob/master/readme.txt">readme.txt</a>에 이름, 이메일, Twitter계정이 포함되어 있을것]
                </li>
            </ul>
            <li><h3>$[ja:pull request を送る]$[en:Send a pull request]$[ko:pull request 요청]</h3></li>
            $[ja:pull request を <a href="https://github.com/yusuke">yusuke</a> に送ります。]$[en:Send a pull request to <a
                href="https://github.com/yusuke">the upstream repository</a>]$[ko:pull request 를 <a href="https://github.com/yusuke">yusuke</a> 에 보냅니다.]
            <li><h3>$[ja:マージとクローズ]$[en:Merge and close]$[ko:Merge and close]</h3></li>
            $[ja:マージが完了し、テストケースが通ると issue はクローズされます。]$[en:The YouTrack issue will be closed once the pull request was merged
            and all test cases were passed.]$[ko:Merge 가 완료, test case가 통과하면 issue 는 클로즈 됩니다.]

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
    <tag:h2 name="issuemanagement" title="$[ja:課題管理]$[en:Issue management]$[ko:이슈관리]">
        <p>$[ja:Twitter4J はJetBrains社の提供する課題管理ツール、<a href="http://issue.twitter4j.org/youtrack/issues/TFJ">YouTrack</a>
            を使ってバグ管理を行っています。]$[en:Atlassian supports our efforts by contributing their bug tracking and issue tracking
            application, <a href="http://issue.twitter4j.org/youtrack/issues/TFJ">YouTrack</a>, to our project.<br>
            <br>
            ]$[ko:Twitter4J 는 JetBrains사가 제공하는 이슈관리툴, <a href="http://issue.twitter4j.org/youtrack/issues/TFJ">YouTrack</a>
            를 사용해 버그관리를 하고 있습니다.]
        </p>
    </tag:h2>
    <tag:h2 name="continuousintegration" title="$[ja:継続ビルド]$[en:Continuous Integration]$[ko:Continuous Integration]">
        <p>$[ja:Twitter4Jは継続ビルドに <a href="http://jenkins.twitter4j.org/job/T4J/">Jenkins</a> を使っています。]$[en:Twitter4J is
            built continuously by <a href="http://jenkins.twitter4j.org/job/T4J/">Jenkins</a>.]$[ko:Twitter4J 는 Continuous Integration 에 <a href="http://jenkins.twitter4j.org/job/T4J/">Jenkins</a> 를 사용하고 있습니다.]
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
            for more information.]$[ko:Twitter4J 는 Maven base의 프로젝트이므로 사용하고 싶은 IDE 를 이용하는게 가능합니다. JetBrains 은 Twitter4J.org 에 IntelliJ IDEA 의 Open
            Source Project License 를 제공하고 있습니다. patch를 작성한 경험이 있는 사람은 이IntelliJ IDEA 의 라이센스 파일을 사용할 수 있습니다. 자세한 사항은
            <script>document.write(new Array("com", ".", "mac", "@", "yusuke").reverse().join(""));</script>
            에 문의하여 주십시오.]<br>
            <br><a href="http://www.jetbrains.com/idea/features/code_analysis.html"
                   style="display:block; background:#fff url(http://www.jetbrains.com/idea/opensource/img/all/banners/idea468x60_white.gif) no-repeat 10px 50%; border:solid 1px #0d3a9e; margin:0;padding:0;text-decoration:none;text-indent:0;letter-spacing:-0.001em; width:466px; height:58px"
                   alt="Java IDE with unparalleled java code analyzer (600+ built-in inspections)"
                   title="Java IDE with unparalleled java code analyzer (600+ built-in inspections)"><span
                    style="margin: 5px 0 0 51px;padding: 0;float: left;font-size: 12px;cursor:pointer;  background-image:none;border:0;color: #0d3a9e; font-family: trebuchet ms,arial,sans-serif;font-weight: normal;text-align:left;">Can't code without</span><span
                    style="margin:0 0 0 205px;padding:18px 0 2px 0; line-height:13px;font-size:13px;cursor:pointer;  background-image:none;border:0;display:block; width:255px; color:#0d3a9e; font-family: trebuchet ms,arial,sans-serif;font-weight: normal;text-align:left;">Java IDE with unparalleled java code <br/>analyzer (600+ built-in inspections)</span></a>
        </p>
    </tag:h2>
</tag:skelton>
