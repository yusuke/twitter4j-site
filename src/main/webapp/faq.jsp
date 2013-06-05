<%@page pageEncoding="UTF-8" session="false" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - $[ja:よくある質問]$[en:FAQ]$[ko:FAQ]"
             description="$[ja:Twitter4Jのよくある質問]$[en:FAQs]$[ko:Twitter4J 에 자주있는 질문]"
             path="http://twitter4j.org/$[ja:ja]$[en:en]$[ko:ko]/faq.html">
    >
    <div class="faq">
        <ol class="main">

            <tag:h3-num name="appname"
                        title="$[ja:twitter.com で from Twitter4J のかわりに自分のアプリケーション名を表示させるにはどうすれば良いですか？]$[en:How do I get “from Twitter4J” appended to updates sent from my application?]$[ko:twitter.com 에서“from Twitter4J”대신 자신의 어플리케이션명을 표시하려면 어떻게 하면 되나요?]">
            $[ja:Twitter4J のかわりにアプリケーション名を表示させるには<a href="http://twitter.com/oauth_clients/new">Twitterの登録ページ</a>で事前にアプリケーションを登録しておき、
            OAuth 認可方式でステータスのアップデートを行う必要があります。]
            $[en:In order to get your app name seen on twitter.com, you need to register your application at <a
                href="http://twitter.com/oauth_clients/new">twitter.com</a> in advance, and use OAuth scheme.]$[ko:Twitter4J 대신 어플리케이션명을 표시하기 위해서는 <a href="http://twitter.com/oauth_clients/new">Twitter 등록페이지</a>에서 사전에 어플리케이션을 등록해두고, 
            OAuth 인증방식에서 status의 update를 해줄 필요가 있습니다.]
            $[ja:こちらのページもご覧ください]$[en:See also]$[ko:이 페이지도 참고해 주십시오.]:<br>
            <ul>
                <li class="numberedlist">
                    Twitter API Wiki - FAQ - <a
                        href="http://apiwiki.twitter.com/FAQ#HowdoIget“fromMyApp”appendedtoupdatessentfrommyAPIapplication">How
                    do I get “from [MyApp]” appended to updates sent from my API application?</a>
                </li>
            </ul>
            </tag:h3-num>
            <tag:h3-num name="threadsafety" title="$[ja:Twitter4J はスレッドセーフですか？]$[en:Is Twitter4J tread-safe?]$[ko:Twitter4J 는 thread safe 합니까?]">
            $[ja:はい。Twitter の API はスレッドセーフですのでメソッドコールは並列に行うことができます。]
            $[en:Yes. Twitter4J is thread-safe and you can make method calls concurrently.]
            $[ko:네, Twitter 의 API 는 thread safe 하므로 메서드 콜은 병렬처리가 가능합니다.]
            </tag:h3-num>
            <tag:h3-num name="bureport" title="$[ja:バグはどこにレポートすれば良いですか？]$[en:Where to report bugs?]$[ko:버그는 어디에 보고하면 되나요?]">
            $[ja:バグレポートは<a href="index.html#mailingList">メーリングリスト</a>へどうぞ。Twitter4J のバグではなく、Twitter API
            の問題と確信している場合は本家<a href="http://groups.google.com/group/twitter-development-talk">Twitter Deveopment Talk</a>へ投げることをお勧めします。]
            $[en:Please feel free to post any reports to the <a href="index.html#mailingList">Twitter4J list</a>. If you
            are sure that the nature of the problem is in the Twitter API itself, you may want to report to the <a
                href="http://groups.google.com/group/twitter-development-talk">Twitter Deveopment Talk</a>.]
            $[ko:버그레포트는<a href="index.html#mailingList">메일링리스트</a>에 부탁드립니다. Twitter4J 의 버그가 아닌 Twitter API
            의 문제라고 확신할 경우는 <a href="http://groups.google.com/group/twitter-development-talk">Twitter Deveopment Talk</a>에 보고하는 것도 추천합니다.]
            $[ja:こちらのページもご覧ください]$[en:See also]$[ko:이 페이지도 참고해 주십시오.]:<br>
            <ul>
                <li class="numberedlist">
                    <a href="http://code.google.com/p/twitter-api/issues/list">Issues - twitter-api - Google Code</a>
                </li>
                <li class="numberedlist">
                    <a href="http://jira.twitter4j.org/browse/TFJ?report=com.atlassian.jira.plugin.system.project:roadmap-panel">Twitter4J
                        $[ja:ロードマップ]$[en: Road Map]$[ko: Road Map]</a>
                </li>
            </ul>
            </tag:h3-num>
            <tag:h3-num name="proxy"
                        title="$[ja:プロキシサーバはどうやって設定しますか？]$[en:How do I configure proxy server for Twitter4J?]$[ko:프록시서버는 어떻게 설정합니까?]">
            $[ja:システムプロパティ(-Dtwitter4j.http.proxyHost, -Dtwitter4j.http.proxyPort) か、以下のように twitter4j.properties
            というファイルで設定できます。]
            $[en:You can either to use system properties(-Dtwitter4j.http.proxyHost, -Dtwitter4j.http.proxyPort) or
            twitter4j.properties.]
            $[ko:시스템 프로퍼티(-Dtwitter4j.http.proxyHost, -Dtwitter4j.http.proxyPort) 가 아래와 같이 twitter4j.properties
            라는 파일로 설정가능합니다.]<br>
<pre class="codeSample">
http.proxyHost=your.proxy.host
http.proxyPort=8080
</pre>
            $[ja:twitter4j.properties はクラスパスのルート、WEB-INF/、プロセスのデフォルトディレクトリのいずれかに置くことができます。]
            $[en:twitter4j.properties can to be located in the root of your app's classpath, in WEB-INF/ directory, or
            in the process's default directory.]
            $[ko:twitter4j.properties 는 클래스패스의 루트, WEB-INF/, 프로세스의 디폴트 디렉토리의 어느쪽에든 둘 수 있습니다.]<br>

            </tag:h3-num>
            <tag:h3-num name="debug"
                        title="$[ja:Twitter4J をつかったアプリケーションをデバッグする良い方法はありますか？]$[en:How do I debug my application?]$[ko:Twitter4J 를 사용한 어플리케이션을 디버그 하는 좋은 방법은 무엇인가요?]">
            $[ja:システムプロパティ twitter4j.debug を true に設定すると Twitter API とのやりとりが標準出力にダンプされます。]
            $[en:You can set the system property twitter4j.debug to true to dump the stream between your client and the
            twitter API.]
            $[ko:시스템 프로퍼티 twitter4j.debug 를 true 로 설정하면 Twitter API 와 주고받는 내용이 표준출력으로 덤프됩니다.]
            </tag:h3-num>
            <tag:h3-num name="compile"
                        title="$[ja:コード例が私の環境(Java1.4)ではコンパイルできません。]$[en:The code examples don't compile on my environment(Java1.4).]$[ko:코드 예가 나의 환경(Java1.4)에서는 컴파일이 안됩니다.]">
            $[ja:Twitter4J は getTimeline(),getUserTimeline(), getFriendsTimeline()
            などリストを返すメソッドで総称型(generics)を返します。コード例の表記法は Java1.4 では利用できません。以下の様にリスト内の要素を取得する際に明示的にキャストを行う必要があります。]
            $[en:Example codes for methods return a list of object such as getTimeline(), getUserTimeline(), and
            getFriendsTimeline() use Java Generics grammar which is applicable Java 5.0 or later. Projects using JDK1.4
            (including the <a href="http://processing.org/">Processing platform</a>) or earlier need to cast explicitly
            to get elements inside the list as follows:]
            $[ko:Twitter4J 는 getTimeline(),getUserTimeline(), getFriendsTimeline()
            등의 리스트를 반환하는 메서드로 (generics)을 반환합니다. 코드 예의 표기법은 Java1.4 에서는 이용할 수 없습니다. 아래와 같이 리스트내의 요소를 취득할 때 명시적으로 cast 를 해줄 필요가 있습니다.]
<pre class="codeSample">
    Twitter twitter = new Twitter(twitterID,twitterPassword);
    List statuses = twitter.getFriendsTimeline();
    System.out.println("Showing friends timeline.");
    for(int i=0; i < statuses.size() ; i++) {
      Status status = (Status)statuses.get(i);
        System.out.println(status.getUser().getName() + ":" +
                           status.getText()); 
    }
</pre>
            $[ja:こちらのページもご覧ください]$[en:See also]$[ko:이 페이지도 참고해 주십시오.]:
            <ul>
                <li class="numberedlist">
                    <a href="http://processing.org/discourse/yabb2/YaBB.pl?board=Integrate;action=display;num=1192732862">Processing
                        1.0 - Processing and Twitter</a>
                </li>
                <li class="numberedlist">
                    <a href="http://processing.org/discourse/yabb2/YaBB.pl?num=1239359542">Processing 1.0 -
                        Twitter4J</a>
                </li>
            </ul>
            </tag:h3-num>
    </div>
</tag:skelton>
