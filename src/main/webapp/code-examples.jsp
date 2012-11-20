<%@page pageEncoding="UTF-8" session="false"%><%@taglib prefix="tag" tagdir="/WEB-INF/tags" %><tag:skelton title="Twitter4J - $[ja:コード例]$[en:Code Examples]">
    <a name="codeExamples"><h2>$[ja:コードサンプル]$[en:Code Examples]</h2></a>
    <p>$[ja:サンプルコードは src/twitter4j/examples/ 以下に配置されています。<br>
    それぞれ bin/<i>className</i>.cmd|sh で実行できます。]
    $[en:Sample codes are located at src/twitter4j/examples/ and you can run each classs using bin/<i>className</i>.cmd|sh.]<br>
$[ja:サンプルコードを動作させるには OAuth の認証情報を twitter4j.properties 記載しておく必要があります。twittetr4j.properties の設定方法について詳しくは<a href="./configuration.html">Twitter4J - 設定</a>のページをご覧ください]
    $[en:To run the example codes, you need to have OAuth credentials configured in twitter4j.properties. See <a href="./configuration.html">Twitter4J - Configuration</a> for the detail.]
    
    </p>
    <ol class="main">
<tag:h3-num name="updatingStatus" title="$[ja:ツイート]$[en:post a Tweet]">
$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String)">updateStatus()</a> メソッドでツイートできます。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/tweets/UpdateStatus.java">twitter4j.examples.tweets.UpdateStatus.java</a> をご覧ください。]
$[en:You can update &quot;What are you doing?&quot; via Twitter.<a href="javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String)">updateStatus()</a> method.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/tweets/UpdateStatus.java">twitter4j.examples.tweets.UpdateStatus.java</a> for the detail.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]
    Twitter twitter = new TwitterFactory().getInstance();
    Status status = twitter.updateStatus(latestStatus);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
</pre>
</tag:h3-num>
<tag:h3-num name="gettingTimeline" title="$[ja:タイムラインの取得]$[en:Getting Timeline]">
$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#getHomeTimeline()">get****Timeline()</a> メソッドで友達、または指定ユーザのホームタイムラインを返します。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/timeline/GetHomeTimeline.java">twitter4j.examples.timeline.GetHomeTimeline.java</a> をご覧ください。]
$[en:Twitter.<a href="javadoc/twitter4j/Twitter.html#getHomeTimeline()">get****Timeline()</a> returns a List of friends or specified user's home timeline.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/timeline/GetHomeTimeline.java">twitter4j.examples.timeline.GetHomeTimeline.java</a> for the detail.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]
    Twitter twitter = new TwitterFactory().getInstance();
    List&lt;Status&gt; statuses = twitter.getFriendsTimeline();
    System.out.println("Showing friends timeline.");
    for (Status status : statuses) {
        System.out.println(status.getUser().getName() + ":" +
                           status.getText());
    }
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]
</tag:h3-num>
<tag:h3-num name="directMessage" title="$[ja:ダイレクトメッセージの送受信]$[en:Sending / Receiving Direct Messages]">
$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage(int,%20java.lang.String)">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a> メソッドでダイレクトメッセージの送受信ができます。<br>
このメッセージは送信した相手にしか見えません。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/directmessage/SendDirectMessage.java">twitter4j.examples.directmessage.SendDirectMessage.java</a> をご覧ください。]
$[en:You can send and receive direct messages via Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage(int,%20java.lang.String)">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a>.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/directmessage/SendDirectMessage.java">twitter4j.examples.directmessage.SendDirectMessage.java</a> for the detail.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]
    Twitter sender = new TwitterFactory().getInstance();
    DirectMessage message = sender.sendDirectMessage(recipientId, message);
    System.out.println("Sent: " message.getText() + " to @" + message.getRecipientScreenName());
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]

</tag:h3-num>
<tag:h3-num name="search" title="$[ja:Tweetの検索]$[en:Search for Tweets]">
$[ja:<a href="javadoc/twitter4j/Query.html">Query</a> クラスと Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> メソッドで検索を行えます。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/search/SearchTweets.java">twitter4j.examples.search.SearchTweets.java</a> をご覧ください。]
$[en:You can search for Tweets using <a href="javadoc/twitter4j/Query.html">Query</a> class and Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> method.<br>
See <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/search/SearchTweets.java">twitter4j.examples.search.SearchTweets.java</a> for the detail.]
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]
    Twitter twitter = new TwitterFactory().getInstance();
    Query query = new Query("source:twitter4j yusukey");
    QueryResult result = twitter.search(query);
    for (Tweet tweet : result.getTweets()) {
        System.out.println(tweet.getFromUser() + ":" + tweet.getText());
    }
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]
</tag:h3-num>
<tag:h3-num name="asyncAPI" title="$[ja:非同期API]$[en:Asynchronous API]">
$[ja:非同期APIを使うと実際のメソッドコールの終了を待たずして処理を続行することができます。<br>
実際のメソッドコールは別のスレッドで行われ、処理の結果は TwitterListener インターフェースにて受信できます。<br>
非同期 API を使うには <a href="javadoc/twitter4j/Twitter.html">Twitter</a> クラスの替わりに twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> クラスを使い、***Async() メソッドを twitter4j.<a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> のインスタンスと共に呼び出します。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/async/AsyncUpdate.java">twitter4j.examples.async.AsyncUpdate.java</a> をご覧ください。]
$[en:It is possible to call the time consuming Twitter APIs asynchronously using twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> class along with <a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a>.<br>
Actual method calls will be done in a separate thread and you can get the responses through <a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> interface.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/async/AsyncUpdate.java">twitter4j.examples.async.AsyncUpdate.java</a> for the detail.]
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
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]
    AsyncTwitterFactory factory = new AsyncTwitterFactory(listenrer);
    AsyncTwitter asyncTwitter = factory.getInstance();
    asyncTwitter.updateStatus(args[0]);
</pre>
</tag:h3-num>
<tag:h3-num name="pagination" title="$[ja:ページ処理]$[en:Pagination control]">
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
<pre class="codeSample">
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]
    Twitter twitter = new TwitterFactory().getInstance();
    // $[ja:２ページ目をリクエスト, １ページあたりの件数は 40件]$[en:requesting page 2, number of elements per page is 40]
    Paging paging = new Paging(2, 40);
    List<Status> statuses = twitter.getFriendsTimeline(paging);
    for (Status status : statuses) {
        System.out.println(status.getUser().getScreenName() + ":" + status.getText());
    }

    // $[ja:３ページ目をリクエスト、since_id は (long)1000]$[en:requesting page 3, since_id is (long)1000]
    statuses = twitter.getFriendsTimeline(new Paging(3).sinceId(1000l));
    for (Status status : statuses) {
        System.out.println(status.getUser().getScreenName() + ":" + status.getText());
    }
</pre>
</tag:h3-num>
<tag:h3-num name="oauth" title="$[ja:OAuth認可]$[en:OAuth support]">
$[ja:OAuth 認可方式を使うとユーザーにユーザID、パスワードを提供してもらうことなくユーザのアカウントにアクセスできます。OAuth を利用するには <a href="http://twitter.com/oauth_clients/new">http://twitter.com/oauth_clients/new</a> で事前にアプリケーションを登録しておき consumer key, consumer secret を取得しておく必要があります。key と secret は <a href="http://twitter4j.org/en/javadoc/twitter4j/Twitter.html#setOAuthConsumer(java.lang.String,%20java.lang.String)">Twitter#setOAuthConsumer()</a> でセットするか、システムプロパティで VM パラメータとして以下のように指定しておきます。]
$[en:With OAuth authorization scheme, an application can access the user account without userid/password combination given. You need to register your application at <a href="http://twitter.com/oauth_clients/new">http://twitter.com/oauth_clients/new</a> to acquire consumer key, and consumer secret in advance. key / secret pair can be set via <a href="http://twitter4j.org/en/javadoc/twitter4j/Twitter.html#setOAuthConsumer(java.lang.String,%20java.lang.String)">Twitter#setOAuthConsumer()</a>, or following system properties:]
<pre class="codeSample">-Dtwitter4j.oauth.consumerKey=[consumer key]
-Dtwitter4j.oauth.consumerSecret=[consumer secret]</pre>
$[ja:最初はユーザアカウントへのアクセス権がありません。以下のように authorization URL にユーザを誘導し、AccessToken を取得する必要があります。]$[en:Initially, you don't have a permission to access the user's account and need to acquire access token by redirecting the user to an authorization URL as follows:]
<pre class="codeSample">
  public static void main(String args[]) throws Exception{
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]
    Twitter twitter = new TwitterFactory().getInstance();
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
    //$[ja:将来の参照用に accessToken を永続化する]$[en:persist to the accessToken for future reference.]
    storeAccessToken(twitter.verifyCredentials().getId() , accessToken);
    Status status = twitter.updateStatus(args[0]);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
    System.exit(0);
  }
  private static void storeAccessToken(int useId, AccessToken accessToken){
    //$[en:store ]accessToken.getToken()$[ja: を保存]
    //$[en:store ]accessToken.getTokenSecret()$[ja: を保存]
  }
</pre>
$[ja:AccessToken を取得した以降は RequestToken は不要になります。次回からは consumer key/secret と AccessToken のみでユーザアカウントにアクセスできます。]
$[en:After you acquired the AccessToken for the user, the RequestToken is not required anymore. You can persist the AccessToken to any kind of persistent store such as RDBMS, or File system by serializing the object, or by geting the token and the secret from AccessToken#getToken() and AccessToken#getTokenSecret().]
<pre class="codeSample">
  public static void main(String args[]) throws Exception{
    // $[ja:このファクトリインスタンスは再利用可能でスレッドセーフです]$[en:The factory instance is re-useable and thread safe.]
    TwitterFactory factory = new TwitterFactory();
<font color="red">    AccessToken accessToken = loadAccessToken(Integer.parseInt(args[0]));
    Twitter twitter = factory.getInstance);
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
<tag:h3-num name="signinwithtwitter" title="$[ja:Twitterアカウントによるサインイン]$[en:Sign in with Twitter]">
$[ja:OAuth を使うと Twitter のアカウントで Web アプリケーションの認証を行うこともできます。これは <a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/SigninServlet.java">RequestToken を取得する際に認証後に戻ってくるコールバックURLを指定</a>し、<a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/CallbackServlet.java">コールバックURLに渡される oauth_verifier パラメータを使って AccessToken を取得する</a>ことで実現できます。<br>
シンプルな実装例は <a href="http://github.com/yusuke/sign-in-with-twitter">http://github.com/yusuke/sign-in-with-twitter</a> にあります。]
$[en:It is possible to authenticate users using Twitter accounts with your web application. To achieve that, simply <a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/SigninServlet.java">pass a callback URL upon RequestToken retrieval</a>, and then <a href="http://github.com/yusuke/sign-in-with-twitter/blob/master/src/main/java/twitter4j/examples/signin/CallbackServlet.java">get the AccessToken with the oauth_verifier parameter which will be added to the callback URL upon callback.</a><br>
An example implementation is available at <a href="http://github.com/yusuke/sign-in-with-twitter">http://github.com/yusuke/sign-in-with-twitter</a>.]
</tag:h3-num>
<tag:h3-num name="streaming" title="$[ja:ストリーミング API]$[en:Streaming API]">
$[ja:ストリーミング API 向けに <a href="javadoc/twitter4j/TwitterStream.html">TwitterStream</a> クラス には<a href="http://twitter4j.org/ja/api-support.html#Streaming%20API%20メソッド">複数のメソッド</a> が用意されています。<a href="javadoc/twitter4j/StatusListener.html">StatusListener</a> インターフェースの実装を用意しておけばスレッド作成、ストリームの読み込みは Twitter4J が行ってくれます。<br>
詳しくは <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/stream/PrintSampleStream.java">twitter4j.examples.stream.PrintSampleStream.java</a> をご覧ください。]
$[en:<a href="javadoc/twitter4j/TwitterStream.html">TwitterStream</a> class has <a href="http://twitter4j.org/en/api-support.html#Streaming%20API%20Methods">several methods</a> prepared for the streaming API. All you need is to have a class implementing <a href="javadoc/twitter4j/StatusListener.html">StatusListener</a>. Twitter4J will do creating a thread, consuming the stream.<br>
See also <a href="https://github.com/yusuke/twitter4j/blob/master/twitter4j-examples/src/main/java/twitter4j/examples/stream/PrintSampleStream.java">twitter4j.examples.stream.PrintSampleStream.java</a> for the detail.]
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
    TwitterStream twitterStream = new TwitterStreamFactory(listener).getInstance();
    // sample() method internally creates a thread which manipulates TwitterStream and calls these adequate listener methods continuously.
    twitterStream.sample();
}
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]
</tag:h3-num>
</ol>

</tag:skelton>