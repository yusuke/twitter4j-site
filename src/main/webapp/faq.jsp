<%@page pageEncoding="UTF-8" session="false"%><%@taglib prefix="tag" tagdir="/WEB-INF/tags" %><tag:skelton title="Twitter4J - $[ja:よくある質問]$[en:FAQ]">
<div class="faq">
    <ol class="main">

<tag:h3-num name="appname" title="$[ja:twitter.com で from Twitter4J のかわりに自分のアプリケーション名を表示させるにはどうすれば良いですか？]$[en:How do I get “from Twitter4J” appended to updates sent from my application?]">
$[ja:Twitter4J のかわりにアプリケーション名を表示させるには<a href="http://twitter.com/oauth_clients/new">Twitterの登録ページ</a>で事前にアプリケーションを登録しておき、 OAuth 認可方式でステータスのアップデートを行う必要があります。]
$[en:In order to get your app name seen on twitter.com, you need to register your application at <a href="http://twitter.com/oauth_clients/new">twitter.com</a> in advance, and use OAuth scheme.]
$[ja:こちらのページもご覧ください]$[en:See also]:<br>
<ul>
  <li class="numberedlist">
    Twitter API Wiki - FAQ - <a href="http://apiwiki.twitter.com/FAQ#HowdoIget“fromMyApp”appendedtoupdatessentfrommyAPIapplication">How do I get “from [MyApp]” appended to updates sent from my API application?</a>
  </li>
</ul>
</tag:h3-num>
<tag:h3-num name="threadsafety" title="$[ja:Twitter4J はスレッドセーフですか？]$[en:Is Twitter4J tread-safe?]">
$[ja:はい。Twitter の API はスレッドセーフですのでメソッドコールは並列に行うことができます。]
$[en:Yes. Twitter4J is thread-safe and you can make method calls concurrently.]
</tag:h3-num>
<tag:h3-num name="bureport" title="$[ja:バグはどこにレポートすれば良いですか？]$[en:Where to report bugs?]">
$[ja:バグレポートは<a href="index.html#mailingList">メーリングリスト</a>へどうぞ。Twitter4J のバグではなく、Twitter API の問題と確信している場合は本家<a href="http://groups.google.com/group/twitter-development-talk">Twitter Deveopment Talk</a>へ投げることをお勧めします。]
$[en:Please feel free to post any reports to the <a href="index.html#mailingList">Twitter4J list</a>. If you are sure that the nature of the problem is in the Twitter API itself, you may want to report to the <a href="http://groups.google.com/group/twitter-development-talk">Twitter Deveopment Talk</a>.]
$[ja:こちらのページもご覧ください]$[en:See also]:<br>
<ul>
  <li class="numberedlist">
    <a href="http://code.google.com/p/twitter-api/issues/list">Issues -  twitter-api - Google Code</a>
  </li>
  <li class="numberedlist">
    <a href="http://twitter4j.org/jira/browse/TFJ?report=com.atlassian.jira.plugin.system.project:roadmap-panel">Twitter4J $[ja:ロードマップ]$[en: Road Map]</a>
  </li>
</ul>
</tag:h3-num>
<tag:h3-num name="proxy" title="$[ja:プロキシサーバはどうやって設定しますか？]$[en:How do I configure proxy server for Twitter4J?]">
$[ja:システムプロパティ(-Dtwitter4j.http.proxyHost, -Dtwitter4j.http.proxyPort) か、以下のように twitter4j.properties というファイルで設定できます。]
$[en:You can either to use system properties(-Dtwitter4j.http.proxyHost, -Dtwitter4j.http.proxyPort) or twitter4j.properties.]<br>
<pre class="codeSample">
http.proxyHost=your.proxy.host
http.proxyPort=8080
</pre>
$[ja:twitter4j.properties はクラスパスのルート、WEB-INF/、プロセスのデフォルトディレクトリのいずれかに置くことができます。]
$[en:twitter4j.properties can to be located in the root of your app's classpath, in WEB-INF/ directory, or in the process's default directory.]<br>

</tag:h3-num>
<tag:h3-num name="debug" title="$[ja:Twitter4J をつかったアプリケーションをデバッグする良い方法はありますか？]$[en:How do I debug my application?]">
$[ja:システムプロパティ twitter4j.debug を true に設定すると Twitter API とのやりとりが標準出力にダンプされます。]
$[en:You can set the system property twitter4j.debug to true to dump the stream between your client and the twitter API.]
</tag:h3-num>
<tag:h3-num name="compile" title="$[ja:コード例が私の環境(Java1.4)ではコンパイルできません。]$[en:The code examples don't compile on my environment(Java1.4).]">
$[ja:Twitter4J は getTimeline(),getUserTimeline(), getFriendsTimeline() などリストを返すメソッドで総称型(generics)を返します。コード例の表記法は Java1.4 では利用できません。以下の様にリスト内の要素を取得する際に明示的にキャストを行う必要があります。]
$[en:Example codes for methods return a list of object such as getTimeline(), getUserTimeline(), and getFriendsTimeline() use Java Generics grammar which is applicable Java 5.0 or later. Projects using JDK1.4 (including the <a href="http://processing.org/">Processing platform</a>) or earlier need to cast explicitly to get elements inside the list as follows:]
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
$[ja:こちらのページもご覧ください]$[en:See also]:
<ul>
  <li class="numberedlist">
<a href="http://processing.org/discourse/yabb2/YaBB.pl?board=Integrate;action=display;num=1192732862">Processing 1.0 - Processing and Twitter</a>
  </li>
  <li class="numberedlist">
    <a href="http://processing.org/discourse/yabb2/YaBB.pl?num=1239359542">Processing 1.0 - Twitter4J</a>
  </li>
</ul>
</tag:h3-num>
</div>
</tag:skelton>