<%@page pageEncoding="UTF-8" session="false"%><%@taglib prefix="tag" tagdir="/WEB-INF/tags" %><tag:skelton title="Twitter4J - $[ja:コード例]$[en:Code Examples]$[ko:코드 예]"
      description="$[ja:Twitter4Jのコード例]$[en:Twitter4J code examples]$[ko:Twitter4J 의 코드 예]"
      path="http://twitter4j.org/$[ja:ja]$[en:en]$[ko:ko]/code-examples.html">
    <a name="codeExamples"><h2>$[ja:コードサンプル]$[en:Code Examples]$[ko:코드 샘플]</h2></a>
    <p>$[ja:サンプルコードは src/twitter4j/examples/ 以下に配置されています。<br>
    それぞれ bin/<i>className</i>.cmd|sh で実行できます。]
    $[en:Sample codes are located at src/twitter4j/examples/ and you can run each classs using bin/<i>className</i>.cmd|sh.]
    $[ko:샘플코드는 src/twitter4j/examples/ 이하에 배치되어 있습니다.<br>
    각각 bin/<i>className</i>.cmd|sh 으로 실행가능합니다.]<br>
$[ja:サンプルコードを動作させるには OAuth の認証情報を twitter4j.properties 記載しておく必要があります。twittetr4j.properties の設定方法について詳しくは<a href="./configuration.html">Twitter4J - 設定</a>のページをご覧ください]
    $[en:To run the example codes, you need to have OAuth credentials configured in twitter4j.properties. See <a href="./configuration.html">Twitter4J - Configuration</a> for the detail.]
    $[ko:샘플코드를 동작시키는데는 OAuth 의 인증정보를 twitter4j.properties 에 기술해둘 필요가 있습니다. twittetr4j.properties 의 설정방법에 대한 상세내용은 <a href="./configuration.html">Twitter4J - 설정</a>페이지를 봐주십시오.]
    </p>
    <ol class="main">
<tag:h3-num name="updatingStatus" title="$[ja:ツイート]$[en:post a Tweet]$[ko:트위트]">
$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String)">updateStatus()</a> メソッドでツイートできます。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/tweets/UpdateStatus.java">twitter4j.examples.tweets.UpdateStatus.java</a> をご覧ください。]
$[en:You can update &quot;What are you doing?&quot; via Twitter.<a href="javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String)">updateStatus()</a> method.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/tweets/UpdateStatus.java">twitter4j.examples.tweets.UpdateStatus.java</a> for the detail.]
$[ko:Twitter.<a href="javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String)">updateStatus()</a> 메서드로 트위트 가능합니다.<br>
상세내용은  <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/tweets/UpdateStatus.java">twitter4j.examples.tweets.UpdateStatus.java</a> 를 봐주십시오.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]$[ko:이 팩토리인스턴스는 재이용가능하고 thread safe 합니다.]
    Twitter twitter = TwitterFactory.getSingleton();
    Status status = twitter.updateStatus(latestStatus);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
</pre>
</tag:h3-num>
<tag:h3-num name="gettingTimeline" title="$[ja:タイムラインの取得]$[en:Getting Timeline]$[ko:타임라인의 취득]">
$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#getHomeTimeline()">get****Timeline()</a> メソッドでホームタイムラインを返します。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/timeline/GetHomeTimeline.java">twitter4j.examples.timeline.GetHomeTimeline.java</a> をご覧ください。]
$[en:Twitter.<a href="javadoc/twitter4j/Twitter.html#getHomeTimeline()">get****Timeline()</a> returns a List of latest tweets from user's home timeline.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/timeline/GetHomeTimeline.java">twitter4j.examples.timeline.GetHomeTimeline.java</a> for the detail.]
$[ko:Twitter.<a href="javadoc/twitter4j/Twitter.html#getHomeTimeline()">get****Timeline()</a> 메서드로 홈타임라인을 반환합니다.<br>
상세내용은 <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/timeline/GetHomeTimeline.java">twitter4j.examples.timeline.GetHomeTimeline.java</a> 를 봐주십시오.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]$[ko:이 팩토리인스턴스는 재이용가능하고 thread safe합니다.]
    Twitter twitter = TwitterFactory.getSingleton();
    List&lt;Status&gt; statuses = twitter.getHomeTimeline();
    System.out.println("Showing home timeline.");
    for (Status status : statuses) {
        System.out.println(status.getUser().getName() + ":" +
                           status.getText());
    }
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]$[ko:Java1.4 나 <a href="http://processing.org/">Processing</a> 에서 컴파일이 안되십니까? <a href="faq.html#generics">FAQ</a> 를 봐주십시오.]
</tag:h3-num>
<tag:h3-num name="directMessage" title="$[ja:ダイレクトメッセージの送受信]$[en:Sending / Receiving Direct Messages]$[ko:다이렉트 메세지의 송수신]">
$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage(int,%20java.lang.String)">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a> メソッドでダイレクトメッセージの送受信ができます。<br>
このメッセージは送信した相手にしか見えません。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/directmessage/SendDirectMessage.java">twitter4j.examples.directmessage.SendDirectMessage.java</a> をご覧ください。]
$[en:You can send and receive direct messages via Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage(int,%20java.lang.String)">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a>.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/directmessage/SendDirectMessage.java">twitter4j.examples.directmessage.SendDirectMessage.java</a> for the detail.]
$[ko:Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage(int,%20java.lang.String)">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a> 메서드로 다이렉트 메세지의 송수신이 가능합니다.<br>
이 메세지는 송신한 상대에게만 보입니다.<br>
상세내용은 <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/directmessage/SendDirectMessage.java">twitter4j.examples.directmessage.SendDirectMessage.java</a> 을 봐주십시오.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]$[ko:이 팩토리인스턴스는 재이용가능하고 thread safe합니다.]
    Twitter sender = TwitterFactory.getSingleton();
    DirectMessage message = sender.sendDirectMessage(recipientId, message);
    System.out.println("Sent: " message.getText() + " to @" + message.getRecipientScreenName());
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]$[ko:Java1.4 나 <a href="http://processing.org/">Processing</a> 에서 컴파일이 안되십니까? <a href="faq.html#generics">FAQ</a> 를 봐주십시오.]

</tag:h3-num>
<tag:h3-num name="search" title="$[ja:Tweetの検索]$[en:Search for Tweets]$[ko:Tweet의 검색]">
$[ja:<a href="javadoc/twitter4j/Query.html">Query</a> クラスと Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> メソッドで検索を行えます。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/search/SearchTweets.java">twitter4j.examples.search.SearchTweets.java</a> をご覧ください。]
$[en:You can search for Tweets using <a href="javadoc/twitter4j/Query.html">Query</a> class and Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> method.<br>
See <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/search/SearchTweets.java">twitter4j.examples.search.SearchTweets.java</a> for the detail.]
$[ko:<a href="javadoc/twitter4j/Query.html">Query</a> 클래스와 Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> 메서드로 검색합니다.<br>
상세내용은 <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/search/SearchTweets.java">twitter4j.examples.search.SearchTweets.java</a> 을 봐주십시오.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]$[ko:이 팩토리인스턴스는 재이용가능하고 thread safe합니다.]
    Twitter twitter = TwitterFactory.getSingleton();
    Query query = new Query("source:twitter4j yusukey");
    QueryResult result = twitter.search(query);
    for (Status status : result.getStatuses()) {
        System.out.println("@" + status.getUser().getScreenName() + ":" + status.getText());
    }
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]$[ko:Java1.4 나 <a href="http://processing.org/">Processing</a> 에서 컴파일이 안되십니까? <a href="faq.html#generics">FAQ</a> 를 봐주십시오.]
</tag:h3-num>
<tag:h3-num name="asyncAPI" title="$[ja:非同期API]$[en:Asynchronous API]$[ko:비동기API]">
$[ja:非同期APIを使うと実際のメソッドコールの終了を待たずして処理を続行することができます。<br>
実際のメソッドコールは別のスレッドで行われ、処理の結果は TwitterListener インターフェースにて受信できます。<br>
非同期 API を使うには <a href="javadoc/twitter4j/Twitter.html">Twitter</a> クラスの替わりに twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> クラスを使い、***Async() メソッドを twitter4j.<a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> のインスタンスと共に呼び出します。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/async/AsyncUpdate.java">twitter4j.examples.async.AsyncUpdate.java</a> をご覧ください。]
$[en:It is possible to call the time consuming Twitter APIs asynchronously using twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> class along with <a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a>.<br>
Actual method calls will be done in a separate thread and you can get the responses through <a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> interface.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/async/AsyncUpdate.java">twitter4j.examples.async.AsyncUpdate.java</a> for the detail.]
$[ko:비동기API를 사용하면 실제의 메서드 콜의 종료를 기다리지 않고 처리를 계속하는 것이 가능합니다.<br>
실제의 메서드 콜은 별도의 스레드로 실행되고, 처리의 결과는 TwitterListener 인터페이스에 의해 수신가능합니다.<br>
비동기 API 를 사용하기 위해서는  <a href="javadoc/twitter4j/Twitter.html">Twitter</a> 클래스 대신 twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> 클래스를 사용하여 ***Async() 메서드를 twitter4j.<a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> 의 인스턴스로 같이 호출합니다.<br>
상세내용은 <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/async/AsyncUpdate.java">twitter4j.examples.async.AsyncUpdate.java</a> 를 봐주십시오.]
<pre class="codeSample">
    TwitterListener listener = new TwitterAdapter() {
        @Override public void updatedStatus(Status status) {
          System.out.println("Successfully updated the status to [" +
                   status.getText() + "].");
        }

        @Override public void onException(TwitterException e, int method) {
          if (method == TwitterMethods.UPDATE_STATUS) {
            e.printStackTrace();
          } else {
            throw new AssertionError("Should not happen");
          }
        }
    }
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]$[ko:이 팩토리인스턴스는 재이용가능하고 thread safe합니다.]
    AsyncTwitterFactory factory = new AsyncTwitterFactory();
    AsyncTwitter asyncTwitter = factory.getInstance();
    asyncTwitter.addListener(listenrer);
    asyncTwitter.updateStatus(args[0]);
</pre>
</tag:h3-num>
<tag:h3-num name="pagination" title="$[ja:ページ処理]$[en:Pagination control]$[ko:페이지 처리]">
$[ja:いくつかの API はページ処理をサポートしています。ぺージ処理には以下のパラメータを指定できます:
<pre class="codeSample">page: ページ
count: １ページあたりの件数
since_id: 指定した id 以降の要素を取得
max_id: 指定した id 以前の情報を取得</pre>
これらのパラメータの指定には <a href="javadoc/twitter4j/Paging.html">Paging</a> クラスを利用します。<br>
全てのパラメータが必ずサポートされているわけではないことに気をつけてください。どのパラメータがサポートされているかどうかは<a href="./api-support.html">サポート API リスト</a>を確認してください。]
$[en:Some API supports pagination. Those APIs accept following parameters:<br>
<pre class="codeSample">page: page
count: number of elements per page
since_id: returns elements which id are biggar than the specified id
max_id: returns elements which id are smaller than the specified id</pre>
You can use <a href="javadoc/twitter4j/Paging.html">Paging</a> class to specify those parameters.<br>
Note that some of above parameters are not accepted by those APIs. Please refer the <a href="./api-support.html">Support API Matrix</a> to see which parameters are accepted by which methods.]
$[ko:몇몇 API는 페이지처리를 서포트하고 있습니다. 페이지처리에는 이하의 파라메터를 지정가능합니다.:
<pre class="codeSample">page: 페이지
count: １페이지당 건수
since_id: 지정한 id 이후의 요소를 취득
max_id: 지정한 id 이전의 정보를 취득</pre>
이 파라메터들의 지정에는 <a href="javadoc/twitter4j/Paging.html">Paging</a> 클래스를 이용합니다.<br>
모든 파라메터가 반드시 서포트되고 있지않다는 것에 주의하십시오. 어떤 파라메터가 서포트되고 있는가의 여부는 <a href="./api-support.html">서포트 API 리스트</a>를 확인해 주십시오.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]$[ko:이 팩토리인스턴스는 재이용가능하고 thread safe합니다.]
    Twitter twitter = TwitterFactory.getSingleton();
    // $[ja:２ページ目をリクエスト, １ページあたりの件数は 40件]$[en:requesting page 2, number of elements per page is 40]$[ko:2번째 페이지를 요청, 1페이지당 건수는 40건]
    Paging paging = new Paging(2, 40);
    List<Status> statuses = twitter.getFriendsTimeline(paging);
    for (Status status : statuses) {
        System.out.println(status.getUser().getScreenName() + ":" + status.getText());
    }

    // $[ja:３ページ目をリクエスト、since_id は (long)1000]$[en:requesting page 3, since_id is (long)1000]$[ko:3번째 페이지를 요청, since_id 는 (long)1000]
    statuses = twitter.getFriendsTimeline(new Paging(3).sinceId(1000l));
    for (Status status : statuses) {
        System.out.println(status.getUser().getScreenName() + ":" + status.getText());
    }
</pre>
</tag:h3-num>
<tag:h3-num name="oauth" title="$[ja:OAuth認可]$[en:OAuth support]$[ko:OAuth 인증]">
$[ja:OAuth 認可方式を使うとユーザーにユーザID、パスワードを提供してもらうことなくユーザのアカウントにアクセスできます。OAuth を利用するには <a href="http://twitter.com/oauth_clients/new">http://twitter.com/oauth_clients/new</a> で事前にアプリケーションを登録しておき consumer key, consumer secret を取得しておく必要があります。key と secret は <a href="http://twitter4j.org/javadoc/twitter4j/Twitter.html#setOAuthConsumer(java.lang.String,%20java.lang.String)">Twitter#setOAuthConsumer()</a> でセットするか、システムプロパティで VM パラメータとして以下のように指定しておきます。]
$[en:With OAuth authorization scheme, an application can access the user account without userid/password combination given. You need to register your application at <a href="http://twitter.com/oauth_clients/new">http://twitter.com/oauth_clients/new</a> to acquire consumer key, and consumer secret in advance. key / secret pair can be set via <a href="http://twitter4j.org/javadoc/twitter4j/Twitter.html#setOAuthConsumer(java.lang.String,%20java.lang.String)">Twitter#setOAuthConsumer()</a>, or following system properties:]
$[ko:OAuth 인증방법을 사용하면 유저에게 유저ID, 패스워드를 제공받지 않고 유저의 계정정보에 접근 가능합니다. OAuth 를 이용하기 위해서는 <a href="http://twitter.com/oauth_clients/new">http://twitter.com/oauth_clients/new</a> 에서 사전에 어플리케이션을 등록시켜두고 consumer key, consumer secret 을 취득해둘 필요가 있습니다. key 와 secret 는 <a href="http://twitter4j.org/javadoc/twitter4j/Twitter.html#setOAuthConsumer(java.lang.String,%20java.lang.String)">Twitter#setOAuthConsumer()</a> 으로 설정 혹은, 시스템 프로퍼티에서 VM 파라메터로 아래와 같이 지정해 둡니다.]
<pre class="codeSample">-Dtwitter4j.oauth.consumerKey=[consumer key]
-Dtwitter4j.oauth.consumerSecret=[consumer secret]</pre>
$[ja:最初はユーザアカウントへのアクセス権がありません。以下のように authorization URL にユーザを誘導し、AccessToken を取得する必要があります。]$[en:Initially, you don't have a permission to access the user's account and need to acquire access token by redirecting the user to an authorization URL as follows:]$[ko:처음은 사용자계정에 접속할 권한이 없습니다. 아래와 같이 authorization URL 에 유저를 유도하여, AccessToken 를 취득해야 하는 필요가 있습니다.]
<pre class="codeSample">
  public static void main(String args[]) throws Exception{
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]$[ko:이 팩토리인스턴스는 재이용가능하고 thread safe합니다.]
    Twitter twitter = TwitterFactory.getSingleton();
    twitter.setOAuthConsumer("[consumer key]", "[consumer secret]");
    RequestToken requestToken = twitter.getOAuthRequestToken();
    AccessToken accessToken = null;
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    while (null == accessToken) {
      System.out.println("Open the following URL and grant access to your account:");
      System.out.println(requestToken.getAuthorizationURL());
      System.out.print("Enter the PIN(if aviailable) or just hit enter.[PIN]:");
      String pin = br.readLine();
      try{
         if(pin.length() > 0){
           accessToken = twitter.getOAuthAccessToken(requestToken, pin);
         }else{
           accessToken = twitter.getOAuthAccessToken();
         }
      } catch (TwitterException te) {
        if(401 == te.getStatusCode()){
          System.out.println("Unable to get the access token.");
        }else{
          te.printStackTrace();
        }
      }
    }
    //$[ja:将来の参照用に accessToken を永続化する]$[en:persist to the accessToken for future reference.]$[ko:향후에 참조용으로 accessToken 을 지속시킨다.]
    storeAccessToken(twitter.verifyCredentials().getId() , accessToken);
    Status status = twitter.updateStatus(args[0]);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
    System.exit(0);
  }
  private static void storeAccessToken(int useId, AccessToken accessToken){
    //$[en:store ]accessToken.getToken()$[ja: を保存]$[ko: 을 보존]
    //$[en:store ]accessToken.getTokenSecret()$[ja: を保存]$[ko: 을 보존]
  }
</pre>
$[ja:AccessToken を取得した以降は RequestToken は不要になります。次回からは consumer key/secret と AccessToken のみでユーザアカウントにアクセスできます。]
$[en:After you acquired the AccessToken for the user, the RequestToken is not required anymore. You can persist the AccessToken to any kind of persistent store such as RDBMS, or File system by serializing the object, or by geting the token and the secret from AccessToken#getToken() and AccessToken#getTokenSecret().]
$[ko:AccessToken 을 취득한 이후는 RequestToken 는 필요치 않습니다. 다음부터는 consumer key/secret 와 AccessToken 만으로 사용자계정에 접근 가능합니다.]
<pre class="codeSample">
  public static void main(String args[]) throws Exception{
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]$[ko:이 팩토리인스턴스는 재이용가능하고 thread safe합니다.]
    TwitterFactory factory = new TwitterFactory();
<font color="red">    AccessToken accessToken = loadAccessToken(Integer.parseInt(args[0]));
    Twitter twitter = factory.getInstance();
    twitter.setOAuthConsumerKey("[consumer key]", "[consumer secret]");
    twitter.setOAuthAccessToken(accessToken);</font>
    Status status = twitter.updateStatus(args[1]);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
    System.exit(0);
  }
  private static AccessToken loadAccessToken(int useId){
    String token = // load from a persistent store
    String tokenSecret = // load from a persistent store
    return new AccessToken(token, tokenSecret);
  }
</pre>
See also:
<a href="http://apiwiki.twitter.com/OAuth-FAQ">Twitter API Wiki / OAuth FAQ</a>

</tag:h3-num>
<tag:h3-num name="signinwithtwitter" title="$[ja:Twitterアカウントによるサインイン]$[en:Sign in with Twitter]$[ko:Twitter 계정에 의한 Sign in]">
$[ja:OAuth を使うと Twitter のアカウントで Web アプリケーションの認証を行うこともできます。これは <a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/SigninServlet.java">RequestToken を取得する際に認証後に戻ってくるコールバックURLを指定</a>し、<a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/CallbackServlet.java">コールバックURLに渡される oauth_verifier パラメータを使って AccessToken を取得する</a>ことで実現できます。<br>
シンプルな実装例は <a href="http://github.com/yusuke/sign-in-with-twitter">http://github.com/yusuke/sign-in-with-twitter</a> にあります。]
$[en:It is possible to authenticate users using Twitter accounts with your web application. To achieve that, simply <a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/SigninServlet.java">pass a callback URL upon RequestToken retrieval</a>, and then <a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/CallbackServlet.java">get the AccessToken with the oauth_verifier parameter which will be added to the callback URL upon callback.</a><br>
An example implementation is available at <a href="http://github.com/yusuke/sign-in-with-twitter">http://github.com/yusuke/sign-in-with-twitter</a>.]
$[ko:OAuth 를 사용하면 Twitter 의 계정으로 Web 어플리케이션의 인증도 가능합니다. 이것은 <a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/SigninServlet.java">RequestToken 을 취득할때 인증후에 돌아오는 콜백 URL 을 지정 </a>하고,<a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/CallbackServlet.java">콜백 URL 에 되돌려지는 oauth_verifier 파라메터를 사용해 AccessToken 을 취득</a>하는것으로 실현 가능합니다.<br>
간단한 구현예는 <a href="http://github.com/yusuke/sign-in-with-twitter">http://github.com/yusuke/sign-in-with-twitter</a> 에 있습니다.]
</tag:h3-num>
<tag:h3-num name="streaming" title="$[ja:ストリーミング API]$[en:Streaming API]$[ko:스트리밍 API]">
$[ja:ストリーミング API 向けに <a href="javadoc/twitter4j/TwitterStream.html">TwitterStream</a> クラス には<a href="http://twitter4j.org/ja/api-support.html#Streaming%20API%20メソッド">複数のメソッド</a> が用意されています。<a href="javadoc/twitter4j/StatusListener.html">StatusListener</a> インターフェースの実装を用意しておけばスレッド作成、ストリームの読み込みは Twitter4J が行ってくれます。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/stream/PrintSampleStream.java">twitter4j.examples.stream.PrintSampleStream.java</a> をご覧ください。]
$[en:<a href="javadoc/twitter4j/TwitterStream.html">TwitterStream</a> class has <a href="http://twitter4j.org/en/api-support.html#Streaming%20API%20Methods">several methods</a> prepared for the streaming API. All you need is to have a class implementing <a href="javadoc/twitter4j/StatusListener.html">StatusListener</a>. Twitter4J will do creating a thread, consuming the stream.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/stream/PrintSampleStream.java">twitter4j.examples.stream.PrintSampleStream.java</a> for the detail.]
$[ko:스트리밍 API 를 위해 <a href="javadoc/twitter4j/TwitterStream.html">TwitterStream</a> 클래스에는 <a href="http://twitter4j.org/ja/api-support.html#Streaming%20API%20Methods">여러개의 메서드</a> 가 준비되어 있습니다.<a href="javadoc/twitter4j/StatusListener.html">StatusListener</a> 인터페이스의 구현을 준비해 두면 스래드 작성, 스트림로드는 Twitter4J 가 대신해 줍니다.<br>
상세내용은 <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/stream/PrintSampleStream.java">twitter4j.examples.stream.PrintSampleStream.java</a> 를 봐주십시오.]
<pre class="codeSample">
public static void main(String[] args) throws TwitterException, IOException{
    StatusListener listener = new StatusListener(){
        public void onStatus(Status status) {
            System.out.println(status.getUser().getName() + " : " + status.getText());
        }
        public void onDeletionNotice(StatusDeletionNotice statusDeletionNotice) {}
        public void onTrackLimitationNotice(int numberOfLimitedStatuses) {}
        public void onException(Exception ex) {
            ex.printStackTrace();
        }
    };
    TwitterStream twitterStream = new TwitterStreamFactory().getInstance();
    twitterStream.addListener(listener);
    // sample() method internally creates a thread which manipulates TwitterStream and calls these adequate listener methods continuously.
    twitterStream.sample();
}
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]
$[ko:Java1.4 나 <a href="http://processing.org/">Processing</a> 에서 컴파일이 안되십니까? <a href="faq.html#generics">FAQ</a> 를 봐주십시오.]
</tag:h3-num>
</ol>

</tag:skelton>
