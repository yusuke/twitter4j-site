<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J">
    <a name="introduction"><h2>$[ja:Twitter4Jとは？]$[en:Introduction]</h2></a>
    <p>$[ja:Twitter4J は <a href="http://groups.google.com/group/twitter-development-talk/web/api-documentation">TwitterAPI</a> の Java ラッパです。<br>
    Twitter4J を使うと XML や HTTP に詳しくなくても容易に Twitter とインタラクトするアプリケーションを書くことが出来ます。]
$[en:Twitter4J is a Java library for <a href="http://groups.google.com/group/twitter-development-talk/web/api-documentation">TwitterAPI</a>.<br>
    With Twitter4J, you can easily integrate your application with the Twitter service.]</p>
    <a name="systemRequirements"><h2>$[ja:システム要件]$[en:System Requirements]</h2></a>
    <p>$[ja:OS: Java をサポートする Windows または Unix 系 OS<br>
JVM: Java 1.4.2 以降]
$[en:OS: Windows or any flavor of Unix that supports Java.<br>
JVM: Java 1.4.2 or later]</p>
</ul>

    <a name="howToUse"><h2>$[ja:使い方]$[en:How To Use]</h2></a>
    <p>$[ja:twitter4j-2.0.0.jar をクラスパスに通して、好きなメソッドを呼び出してください。<br>
    Java が分かっていれば <a href="./javadoc/index.html">JavaDoc</a> を見るのが早いです。<br>
    twitter4j.<a href="javadoc/twitter4j/Twitter.html">Twitter</a> クラスが最初に見るべきクラスです。]
    $[en:It's as simple as adding twitter4j-2.0.0.jar to your classpath.<br>
    If you are familiar with Java language, the <a href="./javadoc/index.html">JavaDoc</a> should be <a href="http://obvious.com/">Obvious</a>ly the shortest way for you to understand Twitter4J.<br>
    <a href="javadoc/twitter4j/Twitter.html">twitter4j.Twitter</a> class is the one you may want to look first.]</p>

    <a name="codeExamples"><h2>$[ja:コードサンプル]$[en:Code Examples]</h2></a>
    <p>$[ja:サンプルコードは src/twitter4j/examples/ 以下に配置されています。<br>
    それぞれ bin/<i>className</i>.cmd|sh で実行できます。]
    $[en:Sample codes are located at src/twitter4j/examples/ and you can run each classs using bin/<i>className</i>.cmd|sh.]
    </p>
    <ol class="main">
<li class="numberedlist"><a name="updatingStatus">$[ja:スタテータスの更新]$[en:Updating status]</a></li>
<p>$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#update(java.lang.String)">update()</a> メソッドで&quot;今なにをしているか&quot;を更新することができます。<br>
詳しくは twitter4j.examples.<a href="javadoc/twitter4j/examples/Update.html">Update</a>.java をご覧ください。]
$[en:You can update &quot;What are you doing?&quot; via Twitter.<a href="javadoc/twitter4j/Twitter.html#update(java.lang.String)">update()</a> method.<br>
See also twitter4j.examples.<a href="javadoc/twitter4j/examples/Update.html">Update</a>.java for detail.]
<pre class="codeSample">
    Twitter twitter = new Twitter(twitterID,twitterPassword);
    Status status = twitter.update(latestStatus);
    System.out.println("Successfully updated the status to [" + status.getText() + "].");
</pre>
</p>
<li class="numberedlist"><a name="gettingTimeline">$[ja:タイムラインの取得]$[en:Getting Timeline]</a></li>
<p>$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#getPublicTimeline()">get****Timeline()</a> メソッドで友達、パブリック、または指定ユーザの最近のタイムラインを返します。<br>
詳しくは twitter4j.examples.<a href="javadoc/twitter4j/examples/GetTimelines.html">GetTimelines</a>.java をご覧ください。]
$[en:Twitter.<a href="javadoc/twitter4j/Twitter.html#getPublicTimeline()">get****Timeline()</a> returns a List of public, friends or specified user's timeline.<br>
See also twitter4j.examples.<a href="javadoc/twitter4j/examples/GetTimelines.html">GetTimelines</a>.java for detail.]
<pre class="codeSample">
    Twitter twitter = new Twitter(twitterID,twitterPassword);
    statuses = twitter.getFriendsTimeline();
    System.out.println("Showing friends timeline.");
    for (Status status : statuses) {
        System.out.println(status.getUser().getName() + ":" +
                           status.getText());
    }
</pre>
</p>

<li class="numberedlist"><a name="directMessage">$[ja:ダイレクトメッセージの送受信]$[en:Sending / Receiving Direct Messages]</a></li>
<p>$[ja:Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage()">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a> メソッドでダイレクトメッセージの送受信ができます。<br>
このメッセージは送信した相手にしか見えません。<br>
詳しくは twitter4j.examples.<a href="javadoc/twitter4j/examples/GetDirectMessages.html">Get</a>/<a href="javadoc/twitter4j/examples/SendDirectMessage.html">SendDirectMessage</a>(s).java をご覧ください。]
$[en:You can send and receive direct messages via Twitter.<a href="javadoc/twitter4j/Twitter.html#sendDirectMessage()">sendDirectMessage()</a> / Twitter.<a href="javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a>.<br>
See also twitter4j.examples.<a href="javadoc/twitter4j/examples/GetDirectMessages.html">Get</a>/<a href="javadoc/twitter4j/examples/SendDirectMessage.html">SendDirectMessage</a>(s).java for detail.]
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
</p>

<li class="numberedlist"><a name="asyncAPI">$[ja:非同期API]$[en:Asynchronous API]</a></li>
<p>$[ja:非同期APIを使うと実際のメソッドコールの終了を待たずして処理を続行することができます。<br>
実際のメソッドコールは別のスレッドで行われ、処理の結果は TwitterListener インターフェースにて受信できます。<br>
非同期 API を使うには <a href="javadoc/twitter4j/Twitter.html">Twitter</a> クラスの替わりに twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> クラスを使い、***Async() メソッドを twitter4j.<a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> のインスタンスと共に呼び出します。<br>
詳しくは twitter4j.examples.<a href="javadoc/twitter4j/examples/AsyncUpdate.html">AsyncUpdate</a>.java をご覧ください。]
$[en:It is possible to call those time consuming TwitterAPI asynchronously using twitter4j.<a href="javadoc/twitter4j/AsyncTwitter.html">AsyncTwitter</a> class along with <a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a>.<br>
Actual method calls will be done in a separate thread and you can get the responses through <a href="javadoc/twitter4j/TwitterListener.html">TwitterListener</a> interface.<br>
See also twitter4j.examples.<a href="javadoc/twitter4j/examples/AsyncUpdate.html">AsyncUpdate</a>.java for detail.]
<pre class="codeSample">
    AsyncTwitter twitter = new AsyncTwitter(senderId,senderPassword);
    twitter.updateAsync(args[2], new TwitterAdapter() {
        @Override public void updated(Status status) {
        System.out.println("Successfully updated the status to [" +
                   status.getText() + "].");
        synchronized (lock) {
            lock.notify();
        }
        }

        @Override public void onException(TwitterException e, int method) {
        if (method == UPDATE) {
            e.printStackTrace();
            synchronized (lock) {
            lock.notify();
            }
        } else {
            synchronized (lock) {
            lock.notify();
            }
            throw new AssertionError("Should not happen");
        }
        }
    }
    );
</pre>
</p>




</ol>

<a name="download"><h2>$[ja:ダウンロード]$[en:Download]</h2></a>
<a href="http://yusuke.homeip.net/twitter4j/$[ja:ja]$[en:en]/twitter4j-2.0.0.zip"><img alt="$[ja:ダウンロード]$[en:Download]" title="$[ja:ダウンロード]$[en:Download]" class="download" src="./images/download.jpg"></a><br>
    <a href="http://yusuke.homeip.net/twitter4j/$[ja:ja]$[en:en]/twitter4j-2.0.0.zip">twitter4j-2.0.0.zip</a>


    <a name="sourceCode"><h2>$[ja:ソースコード]$[en:Source Code]</h2></a>
    <p>$[ja:アーカイブにはソースコードが含まれています。<br>
    プロジェクトのリポジトリには以下の URL からアクセスできます。<br><a href="http://yusuke.homeip.net/fisheye/browse/svn/twitter4j/trunk">http://yusuke.homeip.net/fisheye/browse/svn/twitter4j/trunk</a><br>
    <a href="http://github.com/yusuke/twitter4j">http://github.com/yusuke/twitter4j</a><br>

    または以下のように subversion クライアントを使って最新のソースコードをチェックアウトすることもできます。]
http://github.com/yusuke/twitter4j/tree/master
    $[en:The archive contains jar file along with source code.<br>
    You can browse the project repository at <a href="http://yusuke.homeip.net/fisheye/browse/svn/twitter4j/trunk">http://yusuke.homeip.net/fisheye/browse/svn/twitter4j/trunk</a><br>
    <a href="http://github.com/yusuke/twitter4j">http://github.com/yusuke/twitter4j</a><br>
    Or you can check out the latest source code anonymously with a subversion client as follows:]
    <pre class="codeSample">svn checkout http://yusuke.homeip.net/svn/twitter4j/trunk twitter4j
</pre></p>

    <a name="maven"><h2>$[ja:Maven 統合]$[en:Maven Integration]</h2></a>
<p>$[ja:Maven を使っている場合、pom.xml に以下のように記載すればご自身のプロジェクトに twitter4j を簡単に統合できます。]
$[en:You can integrate Twitter4j easily by including following lines into your pom.xml.]
<pre class="codeSample">   &lt;dependencies&gt;<br/>       &lt;dependency&gt;<br/>           &lt;groupId&gt;net.homeip.yusuke&lt;/groupId&gt;<br/>           &lt;artifactId&gt;twitter4j&lt;/artifactId&gt;<br/>           &lt;version&gt;[1.2,)&lt;/version&gt;<br/>       &lt;/dependency&gt;<br/>       ...<br/>   &lt;/dependencies&gt;<br/></pre>
</p>


    <a name="mailingList"><h2>$[ja:メーリングリスト]$[en:Mailing list]</h2></a>
    <p>$[ja:Twitter4J に関する質問、バグレポート、リクエストなどありましたら以下のメーリングリストにお気軽にどうぞ。<br>
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
バグ、ロードマップなどについては Jira に登録してあります。<br>
    <a href="http://yusuke.homeip.net/jira/browse/TFJ">Jira へ</a>
    ]
    $[en:Any comment, bug report, feature request or patch is highly welcomed.<br>
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
<br>
Known bugs and feature requests will be filed to the Jira site.<br>
    <a href="http://yusuke.homeip.net/jira/browse/TFJ">Go to Jira</a>
    ]
    </p>

    <a name="license"><h2>$[ja:ライセンス]$[en:License]</h2></a>
$[ja:Twitter4J は BSD スタイルライセンスに基づいてリリースされています。<br>]
$[en:Twitter4J is released under a BSD-style license.<br>]
<hr/>
<pre class="codeSample">
Copyright (c) 2007-2009, Yusuke Yamamoto
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Yusuke Yamamoto nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY Yusuke Yamamoto ``AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Yusuke Yamamoto BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.</pre>
$[ja:Twitter4J は JSON レスポンスの解析のため JSON.org のソフトウェアを含んでいます。JSON.org のソフトウェアのライセンスについては<a href="http://www.JSON.org/license.html">The JSON License</a>をご覧ください。<br>]
$[en:Twitter4J includes software from JSON.org to parse JSON response from the Twitter API. You can see the license term at <a href="http://www.JSON.org/license.html">The JSON License</a>.<br>]

    <a name="pricing"><h2>$[ja:価格]$[en:Pricing]</h2></a>
$[ja:Twitter4J はどなたでも商標、非商用にかかわらず無償でご利用いただけます。<br>
もし Twitter4J があなたの生活を豊かにしてくれると感じたならば、以下の PayPal バッジから寄付していただくことも可能です。<br>
<br>
]$[en:Twitter4J is an opensourced software and free of charge.<br>
You can use Twitter4J freely for any commercial or non-commercial project.<br>
If you feel Twitter4J makes your life easier, please do consider making a donation!<br><br>]
<include>paypal.html</include>
    

</div>
</tag:skelton>