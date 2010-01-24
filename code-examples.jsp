<%@page pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - $[ja:コード例]$[en:Code Examples]">
    <a name="codeExamples"><h2>$[ja:コードサンプル]$[en:Code Examples]</h2></a>
    <p>$[ja:サンプルコードは src/twitter4j/examples/ 以下に配置されています。<br>
    それぞれ bin/<i>className</i>.cmd|sh で実行できます。]
    $[en:Sample codes are located at src/twitter4j/examples/ and you can run each classs using bin/<i>className</i>.cmd|sh.]
    </p>
    <ol class="main">
<li class="numberedlist"><a name="updatingStatus">$[ja:スタテータスの更新]$[en:Updating status]</a></li>
<p>$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String)">updateStatus()</a> メソッドで&quot;今なにをしているか&quot;を更新することができます。<br>
詳しくは <a href="http://twitter4j.org/fisheye/browse/svn/twitter4j/trunk/src/main/java/twitter4j/examples/Update.java?r=HEAD">twitter4j.examples.Update.java</a> をご覧ください。]
$[en:You can update &quot;What are you doing?&quot; via Twitter.<a href="javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String)">updateStatus()</a> method.<br>
See also <a href="http://twitter4j.org/fisheye/browse/svn/twitter4j/trunk/src/main/java/twitter4j/examples/Update.java?r=HEAD">twitter4j.examples.Update.java</a> for detail.]
<pre class="codeSample">
    Twitter twitter = new Twitter(twitterID,twitterPassword);
    Status status = twitter.updateStatus(latestStatus);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
</pre>
</p>
<li class="numberedlist"><a name="gettingTimeline">$[ja:タイムラインの取得]$[en:Getting Timeline]</a></li>
<p>$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#getPublicTimeline()">get****Timeline()</a> メソッドで友達、パブリック、または指定ユーザの最近のタイムラインを返します。<br>
詳しくは <a href="http://twitter4j.org/fisheye/browse/svn/twitter4j/trunk/src/main/java/twitter4j/examples/GetTimelines.java?r=HEAD">twitter4j.examples.GetTimelines.java</a> をご覧ください。]
$[en:Twitter.<a href="javadoc/twitter4j/Twitter.html#getPublicTimeline()">get****Timeline()</a> returns a List of public, friends or specified user's timeline.<br>
See also <a href="http://twitter4j.org/fisheye/browse/svn/twitter4j/trunk/src/main/java/twitter4j/examples/GetTimelines.java?r=HEAD">twitter4j.examples.GetTimelines.java</a> for detail.]
<pre class="codeSample">
    Twitter twitter = new Twitter(twitterID,twitterPassword);
    List&lt;Status&gt; statuses = twitter.getFriendsTimeline();
    System.out.println("Showing friends timeline.");
    for (Status status : statuses) {
        System.out.println(status.getUser().getName() + ":" +
                           status.getText());
    }
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]
</p>

<li class="numberedlist"><a name="directMessage">$[ja:ダイレクトメッセージの送受信]$[en:Sending / Receiving Direct Messages]</a></li>
<p>$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage()">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a> メソッドでダイレクトメッセージの送受信ができます。<br>
このメッセージは送信した相手にしか見えません。<br>
詳しくは <a href="http://twitter4j.org/fisheye/browse/svn/twitter4j/trunk/src/main/java/twitter4j/examples/SendDirectMessage.java?r=HEAD">twitter4j.examples.SendDirectMessage.java</a> をご覧ください。]
$[en:You can send and receive direct messages via Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage()">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a>.<br>
See also <a href="http://twitter4j.org/fisheye/browse/svn/twitter4j/trunk/src/main/java/twitter4j/examples/SendDirectMessage.java?r=HEAD">twitter4j.examples.SendDirectMessage.java</a> for detail.]
<pre class="codeSample">
    Twitter twitter = new Twitter(senderID,senderPassword);
    sender.sendDirectMessage(recipientId,message);
    Twitter receiver = new Twitter(recipientId,recipientPassword);
    List&lt;DirectMessage&gt; messages = receiver.getDirectMessages();
    for (DirectMessage message : messages) {
        System.out.println("Sender:" + message.getSenderScreenName());
        System.out.println("Text:" + message.getText() + "\n");
    }
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]
</p>

<li class="numberedlist"><a name="search">$[ja:Tweetの検索]$[en:Search for Tweets]</a></li>
<p>$[ja:<a href="javadoc/twitter4j/Query.html">Query</a> クラスと Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> メソッドで検索を行えます。]
$[en:You can search for Tweets using <a href="javadoc/twitter4j/Query.html">Query</a> class and Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> method as following:]
<pre class="codeSample">
    Twitter twitter = new Twitter();
    Query query = new Query("source:twitter4j yusukey");
    QueryResult result = twitter.search(query);
    System.out.println("hits:" + result.getTotal());
    for (Tweet tweet : result.getTweets()) {
        System.out.println(tweet.getFromUser() + ":" + tweet.getText());
    }
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]
</p>

<li class="numberedlist"><a name="asyncAPI">$[ja:非同期API]$[en:Asynchronous API]</a></li>
<p>$[ja:非同期APIを使うと実際のメソッドコールの終了を待たずして処理を続行することができます。<br>
実際のメソッドコールは別のスレッドで行われ、処理の結果は TwitterListener インターフェースにて受信できます。<br>
非同期 API を使うには <a href="javadoc/twitter4j/Twitter.html">Twitter</a> クラスの替わりに twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> クラスを使い、***Async() メソッドを twitter4j.<a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> のインスタンスと共に呼び出します。<br>
詳しくは <a href="http://twitter4j.org/fisheye/browse/svn/twitter4j/trunk/src/main/java/twitter4j/examples/AsyncUpdate.java?r=HEAD">twitter4j.examples.AsyncUpdate.java</a> をご覧ください。]
$[en:It is possible to call the time consuming Twitter APIs asynchronously using twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> class along with <a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a>.<br>
Actual method calls will be done in a separate thread and you can get the responses through <a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> interface.<br>
See also <a href="http://twitter4j.org/fisheye/browse/svn/twitter4j/trunk/src/main/java/twitter4j/examples/AsyncUpdate.java?r=HEAD">twitter4j.examples.AsyncUpdate.java</a> for detail.]
<pre class="codeSample">
    AsyncTwitter twitter = new AsyncTwitter(senderId,senderPassword);
    twitter.updateStatusAsync(args[2], new TwitterAdapter() {
        @Override public void updatedStatus(Status status) {
          System.out.println("Successfully updated the status to [" +
                   status.getText() + "].");
        }

        @Override public void onException(TwitterException e, int method) {
          if (method == AsyncTwitter.UPDATE_STATUS) {
            e.printStackTrace();
          } else {
            throw new AssertionError("Should not happen");
          }
        }
    }
    );
</pre>
</p>
<li class="numberedlist"><a name="pagination">$[ja:ページ処理]$[en:Pagination control]</a></li>
<p>$[ja:いくつかの API はページ処理をサポートしています。ぺージ処理には以下のパラメータを指定できます:
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
    Twitter twitter = new Twitter("user", "password");
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
</p>

<li class="numberedlist"><a name="oauth">$[ja:OAuth認可]$[en:OAuth support]</a></li>
<p>$[ja:OAuth 認可方式を使うとユーザーにユーザID、パスワードを提供してもらうことなくユーザのアカウントにアクセスできます。OAuth を利用するには <a href="http://twitter.com/oauth_clients/new">http://twitter.com/oauth_clients/new</a> で事前にアプリケーションを登録しておき consumer key, consumer secret を取得しておく必要があります。key と secret は <a href="http://twitter4j.org/en/javadoc/twitter4j/Twitter.html#setOAuthConsumer(java.lang.String,%20java.lang.String)">Twitter#setOAuthConsumer()</a> でセットするか、システムプロパティで VM パラメータとして以下のように指定しておきます。]
$[en:With OAuth authorization scheme, an application can access the user account without userid/password combination given. You need to register your application at <a href="http://twitter.com/oauth_clients/new">http://twitter.com/oauth_clients/new</a> to acquire consumer key, and consumer secret in advance. key / secret pair can be set via <a href="http://twitter4j.org/en/javadoc/twitter4j/Twitter.html#setOAuthConsumer(java.lang.String,%20java.lang.String)">Twitter#setOAuthConsumer()</a>, or following system properties:]
<pre class="codeSample">-Dtwitter4j.oauth.consumerKey=[consumer key]
-Dtwitter4j.oauth.consumerSecret=[consumer secret]</pre>
$[ja:最初はユーザアカウントへのアクセス権がありません。以下のように authorization URL にユーザを誘導し、AccessToken を取得する必要があります。]$[en:Initially, you don't have a permission to access the user's account and need to acquire access token by redirecting the user to an authorization URL as follows:]
<pre class="codeSample">
  public static void main(String args[]) thrwos Exception{
    Twitter twitter = new Twitter();
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
           accessToken = requestToken.getAccessToken();
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
    storeAccessToken(twitter.verifyCredentials().getId() , at);
    Status status = twitter.updateStatus(args[0]);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
    System.exit(0);
  }
  private void storeAccessToken(int useId, AccessToken at){
    //$[en:store ]at.getToken()$[ja: を保存]
    //$[en:store ]at.getTokenSecret()$[ja: を保存]
  }
</pre>
$[ja:AccessToken を取得した以降は RequestToken は不要になります。次回からは consumer key/secret と AccessToken のみでユーザアカウントにアクセスできます。]
$[en:After you acquired the AccessToken for the user, the RequestToken is not required anymore. You can persist the AccessToken to any kind of persistent store such as RDBMS, or File system by serializing the object, or by geting the token and the secret from AccessToken#getToken() and AccessToken#getTokenSecret().]
<pre class="codeSample">
  public static void main(String args[]) thrwos Exception{
    Twitter twitter = new Twitter();
    twitter.setOAuthConsumer("[consumer key]", "[consumer secret]");
<font color="red">    AccessToken accessToken = loadAccessToken(Integer.parseInt(args[0]));
    twitter.setAccessToken(accessToken);</font>
    Status status = twitter.updateStatus(args[1]);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
    System.exit(0);
  }
  private AccessToken loadAccessToken(int useId){
    String token = // load from a persistent store
    String tokenSecret = // load from a persistent store
    return new AccessToken(token, tokenSecret);
  }
</pre>
See also:
<a href="http://apiwiki.twitter.com/OAuth-FAQ">Twitter API Wiki / OAuth FAQ</a>
</p>

<li class="numberedlist"><a name="streaming">$[ja:ストリーミング API]$[en:Streaming API]</a></li>
<p>$[ja:<a href="javadoc/twitter4j/Query.html">Query</a> クラスと Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> メソッドで検索を行えます。]
$[en:There are <a href="http://twitter4j.org/en/api-support.html#Streaming%20API%20Methods">several methods</a> you can use to get TweetsAPIsYou can search for Tweets using <a href="javadoc/twitter4j/Query.html">Query</a> class and Twitter.<a href="javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search(twitter4j.Query)</a> method as following:]
<pre class="codeSample">
    Twitter twitter = new Twitter();
    Query query = new Query("source:twitter4j yusukey");
    QueryResult result = twitter.search(query);
    System.out.println("hits:" + result.getTotal());
    for (Tweet tweet : result.getTweets()) {
        System.out.println(tweet.getFromUser() + ":" + tweet.getText());
    }
</pre>
$[ja:Java1.4 や <a href="http://processing.org/">Processing</a> でコンパイルできませんか？ <a href="faq.html#generics">FAQ</a> をご覧ください]$[en:Doesn't work on Java1.4, or <a href="http://processing.org/">Processing</a>? Check the <a href="faq.html#generics">FAQ</a>!]
</p>


</ol>

</tag:skelton>