<%@page language="java" pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - JavaDoc">
<div class="javadoc">
    <a name="javaDoc"><h1>JavaDoc</h1></a>
<h2><a name="latst">$[ja:最新バージョン]$[en:Latest version]</a></h2>
<p><a href="./javadoc/index.html">･$[ja:バージョン]$[en:Version] <include>latest-version.fragment</include> JavaDoc</a></p>

<h2><a name="latst">$[ja:最新安定スナップショットビルド]$[en:Latest stable snapshot build]</a></h2>
<p><a href="./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">･$[ja:バージョン]$[en:Version] <include>latest-SNAPSHOT-version.fragment</include> JavaDoc</a><br>
<a href="./oldjavadocs/<include>latest-version.fragment</include>-<include>latest-SNAPSHOT-version.fragment</include>/changes.html">･JavaDoc diff from $[ja:バージョン]$[en:Version] <include>latest-version.fragment</include></a>
<h2><a name="migration">$[ja:バージョン 2.0.x から 2.1.x への移行ガイド]$[en:Migration guide from 2.0.x to 2.1.x]</a></h2>
<p>$[ja:- まずプロジェクトの再ビルドを！<br>
バージョン2.1.0 は旧バージョンから若干の非互換箇所があります。旧バージョンを利用していたプロジェクトでバージョン2.1.0を利用する場合は必ずプロジェクトの再ビルドを行ってください。<br>]
$[en:- Rebuild your project first!<br>
Version 2.1.0 is slightly incompatible with older versions. Projects that have been using older versions are required to be rebuilt before using Version 2.1.0.]
<p>$[ja:- 非推奨メソッドの廃止(<a href="http://yusuke.homeip.net/jira/browse/TFJ-113">TFJ-113</a>,<a href="http://yusuke.homeip.net/jira/browse/TFJ-113">TFJ-240</a>)<br>
バージョン2.0.10で非推奨となっていたメソッド全てとgetFeatured()は廃止(削除)されました。<br>
<br>]
$[en:- Retirement of deprecated methods(<a href="http://yusuke.homeip.net/jira/browse/TFJ-113">TFJ-113</a>,<a href="http://yusuke.homeip.net/jira/browse/TFJ-113">TFJ-240</a>)<br>
All methods marked as deprecated at version 2.0.10, and getFeatured() have been retired (removed).<br>
<br>]
$[ja:- getFriendsStatuses() と getFollowersStatuses()(<a href="http://yusuke.homeip.net/jira/browse/TFJ-234">TFJ-234</a>) のカーソルベースのぺージング<br>
getFriendsStatuses(Paging) と getFollowersStatuses(Paging) は廃止されました。<br>
代わりに<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFriendsStatuses(long)">getFriendsStatuses(long)</a> と <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFollowersStatuses(java.lang.String,%20long)">getFollowersStatuses(long)</a>でカーソルベースのページングを行えます。<br>
これらのメソッドは<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/CursorSupport.html">CursorSupport</a>を実装する<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/PagableResponseList.html">PagableResponseList</a>&lt;twitter4j.List&gt; を返します。<br>
パラメータなしの getFriendsStatuses() と getFollowersStatuses() は getFriendsStatuses(-1l) または getFollowersStatuses(-1l) を呼び出すのと同じで、最初のページを返します。<br>
getFriendsStatuses(前回のレスポンス.getNextCursor()) を呼ぶことで次のぺージを取得できます。<br>
<br>]
$[en:- Cursor based pagenation with getFriendsStatuses() and getFollowersStatuses()(<a href="http://yusuke.homeip.net/jira/browse/TFJ-234">TFJ-234</a>)<br>
getFriendsStatuses(Paging) and getFollowersStatuses(Paging) have been retired.<br>
Instead, you can use cursor based pagenation with <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFriendsStatuses(long)">getFriendsStatuses(long)</a> and <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFollowersStatuses(java.lang.String,%20long)">getFollowersStatuses(long)</a>.<br>
They return <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/PagableResponseList.html">PagableResponseList</a>&lt;twitter4j.List&gt; which implements <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/CursorSupport.html">CursorSupport</a>.<br>
getFriendsStatuses() and getFollowersStatuses() (with no parameter) are handy methods which are equivalent calls to getFriendsStatuses(-1l) and getFollowersStatuses(-1l) which retrieve the first page.<br>
Call getFriendsStatuses(previousResponse.getNextCursor()) to retrieve the next page.<br>
<br>]
$[ja:- java.util.List に替わる twitter4j.ResponseList<br>
これまでクライアントコードはTwitterResponse のリストを返すメソッドを利用する場合、rate limit status を確認するのにリスト中の要素を見なければなりませんでした。<br>
バージョン2.1.0ではjava.util.List の替わりに rate limit status を直接確認できる <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/ResponseList.html">twitter4j.ResponseList</a> を返します。 <br>
<br>]
$[en:- twitter4j.ResponseList instead of java.util.List<br>
Previously, client codes using methods that returns List of TwitterResponse need to pick one element inside the list to check the rate limit status.<br>
Now those methods returns <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/ResponseList.html">twitter4j.ResponseList</a> instead of java.util.List, and rate limit status is available directly through the ResponseList.<br>
<br>]
$[ja:- screen_name と user_id の曖昧さの除去]
$[en:- Disambiguation of screen name and user id](<a href="http://yusuke.homeip.net/jira/browse/TFJ-207">TFJ-207</a>)<br>
$[ja:Stringを引数にとるものはユーザ関連のメソッドは、数値はユーザIDとして、非数値文字列はスクリーン名として解釈されていました。<br>
以下のメソッドは (int userId)を引数にとるメソッドを追加し、スクリーン名が数値のユーザを適切に扱えるようになりました。<br>]
$[en:User related methods that take (String id) had ambiguities about numeric-only screen names. Following methods now take (int userId) as well as (String screenName) and it is now possible to treat numeric-only screen names properly.<br>]
getUserTimeline()<br>
showUser()<br>
sendDirectMessage()<br>
getFriendsStatuses()<br>
getFollowersStatuses()<br>
enableNotification()<br>
disableNotification()<br>
createBlock()<br>
destroyBlock()<br>
existsBlock()<br>
createFriendShip()<br>
destroyFriendShip()<br>
<br>
$[ja:- AsyncTwitter / TwitterListener 関連の変更]
$[en:- AsyncTwitter / TwitterListener changes](<a href="http://yusuke.homeip.net/jira/browse/TFJ-244">TFJ-244</a>,<a href="http://yusuke.homeip.net/jira/browse/TFJ-244">TFJ-246</a>)<br>
$[ja:TwitterListener.onException(TwitterException te, int method) は廃止され、替わりに TwitterListener.onException(TwitterException te, TwitterMethod method) が導入されました。
TwiteterListener を引数にとらない非同期メソッドは廃止されました。(<a href="http://yusuke.homeip.net/jira/browse/TFJ-244">TFJ-246</a>)<br>]
$[en:TwitterListener.onException(TwitterException te, int method) has been retired, and TwitterListener.onException(TwitterException te, TwitterMethod method) is now available.<br>
Async methods that don't take TwitterListener were all retired.(<a href="http://yusuke.homeip.net/jira/browse/TFJ-244">TFJ-246</a>)<br>]
<br>
$[ja:- Streaming API サポートの削除、リミット通知対応]
$[en:- Streaming API supports deletion and track limit notices](<a href="http://yusuke.homeip.net/jira/browse/TFJ-210">TFJ-210</a>)<br>
$[ja:<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusListener.html#onDeletionNotice(twitter4j.StatusDeletionNotice)">StatusListener.onDeletionNotice(StatusDeletionNotice)</a>,<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusListener.html#onTrackLimitationNotice(int)">StatusListener.onTrackLimitationNotice(int)</a> が導入されました。
また、StatusStream の next メソッドシグニチャは
 <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.0.10/twitter4j/StatusStream.html#next()">Status next()</a> から <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusStream.html#next(twitter4j.StatusListener)">void next(StatusListener listener)</a> へと変更されました。<br>]
$[en:<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusListener.html#onDeletionNotice(twitter4j.StatusDeletionNotice)">StatusListener.onDeletionNotice(StatusDeletionNotice)</a> and <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusListener.html#onTrackLimitationNotice(int)">StatusListener.onTrackLimitationNotice(int)</a> have been introduced.
The method signature of StatusStream#next has been changed from <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.0.10/twitter4j/StatusStream.html#next()">Status next()</a> to <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusStream.html#next(twitter4j.StatusListener)">void next(StatusListener listener)</a>.<br>]
<br>
$[ja:- メソッド名の修正(<a href="http://yusuke.homeip.net/jira/browse/TFJ-245">TFJ-245</a>)]
$[en:- Method name refactors]<br>
$[ja:<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.0.10/twitter4j/Twitter.html#updateDeliverlyDevice(twitter4j.Twitter.Device)">Twitter.updateDeliverlyDevice()</a> は <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#updateDeliveryDevice(twitter4j.Twitter.Device)">Twitter.updateDeliveryDevice()</a> へとリネームされました。<br>
<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.0.10/twitter4j/AsyncTwitter.html#updateDeliverlyDeviceAsync(twitter4j.Twitter.Device,%20twitter4j.TwitterListener)">AsyncTwitter.updateDeliverlyDeviceAsync()</a> は <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/AsyncTwitter.html#updateDeliveryDeviceAsync(twitter4j.Twitter.Device,%20twitter4j.TwitterListener)">AsyncTwitter.updateDeliveryDevice()</a> へとリネームされました。<br>
<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.0.10/twitter4j/TwitterListener.html#updatedDeliverlyDevice(twitter4j.User)">TwitterListener.updatedDeliverlyDevice()</a> は <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterListener.html#updatedDeliveryDevice(twitter4j.User)">TwitterListener.updatedDeliveryDevice()</a> へとリネームされました。<br>]
$[en:<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.0.10/twitter4j/Twitter.html#updateDeliverlyDevice(twitter4j.Twitter.Device)">Twitter.updateDeliverlyDevice()</a> has been renamed to <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#updateDeliveryDevice(twitter4j.Twitter.Device)">Twitter.updateDeliveryDevice()</a>.<br>
<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.0.10/twitter4j/AsyncTwitter.html#updateDeliverlyDeviceAsync(twitter4j.Twitter.Device,%20twitter4j.TwitterListener)">AsyncTwitter.updateDeliverlyDeviceAsync()</a> has been renamed to <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/AsyncTwitter.html#updateDeliveryDeviceAsync(twitter4j.Twitter.Device,%20twitter4j.TwitterListener)">AsyncTwitter.updateDeliveryDevice()</a>.<br>
<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.0.10/twitter4j/Twitter.html#updateDeliverlyDevice(twitter4j.Twitter.Device)">TwitterListener.updateDeliverlyDevice()</a> has been renamed <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#updateDeliveryDevice(twitter4j.Twitter.Device)">TwitterListener.updateDeliveryDevice()</a>.<br>]
<br>
$[ja:- TwitterResponse はクラスではなくなりました<br>
多くの場合、関係ありませんが、<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponse.html">TwitterResponse</a> は rate limit status のアクセサを意味するインターフェースになりました。もうレスポンスオブジェクトの親クラスではありません。より正確に、内部の話をするとバージョン2.1.0からほとんどのレスポンスクラスは<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponseImpl.html">TwitterResponseImpl</a> を継承するようになりました。]
$[en:- TwitterResponse is not a class anymore.<br>
Shouldn't matter in most cases. <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponse.html">TwitterResponse</a> is now an interface representing just rate limit status accessors. It's not a super class of every response objects anymore. More specifically and internally, most of response classes are extending <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponseImpl.html">TwitterResponseImpl</a> from Version 2.1.0.]
$[ja:- XML 利用の廃止(<a href="http://yusuke.homeip.net/jira/browse/TFJ-162">TFJ-162</a>)<br>
これは内部のリファクタリングで、コード変更は必要ありません。<br>
全ての Twitter4J のメソッドは JSON ベースのメソッドを使うようになりました。<br>
これは JIT コンパイラを持たない Android 上で飛躍的にパフォーマンスを改善し、また Dalvik の XML パーサのひどいバグを回避します。<br>
・ <a href="http://code.google.com/p/android/issues/detail?id=2607">Issue 2607: org.apache.harmony.xml.parsers.DocumentBuilderImpl does not resolve unicode entity refs</a><br>
・ <a href="http://code.google.com/p/android/issues/detail?id=4666">Issue 4666: DocumentBuilder (XML DOM) doesn't support external entities</a><br>
<br>]
$[en:- No more XML, not any more(<a href="http://yusuke.homeip.net/jira/browse/TFJ-162">TFJ-162</a>)<br>
This is just an internal rework and no code change is required.<br>
All over Twitter4J methods are now using JSON based methods.<br>
This will significantly boost performance on Android platforms (which doesn't implement JIT compiler :( ) and workaround the Dalvik's horrible XML parser bugs of the Dalvik JVM.<br>
-&gt; <a href="http://code.google.com/p/android/issues/detail?id=2607">Issue 2607: org.apache.harmony.xml.parsers.DocumentBuilderImpl does not resolve unicode entity refs</a><br>
-&gt; <a href="http://code.google.com/p/android/issues/detail?id=4666">Issue 4666: DocumentBuilder (XML DOM) doesn't support external entities</a><br>
<br>]
</pre>
</p>

<h2><a name="oldVersions">$[ja:古いバージョンの JavaDoc と差分]$[en:Old JavaDocs and diffs]</a></h2>
<p><%@ include file="oldjavadocs.jsp"%>
</p>
</div>
</tag:skelton>