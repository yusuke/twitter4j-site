<%@page language="java" pageEncoding="UTF-8" session="false"%><%@taglib prefix="tag" tagdir="/WEB-INF/tags" %><tag:skelton title="Twitter4J - $[ja:バージョン]$[en:Versions]"
 description="$[ja:TwitterAPの変遷をお伝えします。]
$[en:Twitter4J versions at a glance]"
path="http://twitter4j/$[ja:ja]$[en:en]/versions.html">

<div class="javadoc">
    <a name="versions"><h1>$[ja:バージョン]$[en:Versions]</h1></a>

<tag:h2 name="latst" title="$[ja:開発中のバージョン]$[en:In development]">
･<a href="http://jira.twitter4j.org/issues/?filter=10030">$[ja:バージョン]$[en:Version] <include>latest-SNAPSHOT-version.fragment</include></a><br>
･<a href="./oldjavadocs/<include>latest-version.fragment</include>-<include>latest-SNAPSHOT-version.fragment</include>/changes.html">$[ja:バージョン <include>latest-version.fragment</include> からの JavaDoc diff]$[en:JavaDoc diff from Version <include>latest-version.fragment</include>]</a>
</tag:h2>
<tag:h2 name="migration22x-30x" title="$[ja:バージョン 2.2.x から 3.0.x への移行]$[en:Migrating from 2.2.x to 3.0.x]">
$[ja:- まずプロジェクトの再ビルドを！<br>
Twitter API1.1の対応に伴いバージョン3.0.x は旧バージョンから若干の非互換箇所があります。旧バージョンを利用していたプロジェクトでバージョン3.0.xを利用する場合は必ずプロジェクトの再ビルドを行ってください。]
$[en:- Rebuild your project first!<br>
Version 3.0.x is compatible with Twitter API1.1, but slightly incompatible with previous versions of Twitter4J. Projects that have been using previous versions are required to be rebuilt to migrate to Version 3.0.x.]<br>
<br>
$[ja:- 変更・廃止になったメソッド]$[en:- method migration]<br>
$[ja:以下のメソッドは廃止になっています。同等の機能を持つ新しいメソッドに移行するか、当該機能の利用を停止する必要があります。<br>]
$[en:Following methods were retired and application need to use equivalent method (if exists).<br>]
<table class="api-matrix" width="300px">
<tr><th>$[ja:廃止メソッド]$[en:Retired method]</th><th>$[ja:移行先]$[en:migrate to]</th></tr>
<tr><td>disableNotification()</td><td><a href="http://twitter4j.org/javadoc/twitter4j/api/FriendsFollowersResources.html#updateFriendship(long,%20boolean,%20boolean)">updateFriendship()</a></td></tr>
<tr><td>enableNotification()</td><td><a href="">updateFriendship()</td></tr>
<tr><td>getProfileImage()</td><td>User#get<a href="http://twitter4j.org/javadoc/twitter4j/User.html#getBiggerProfileImageURL()">Bigger</a>|<a href="http://twitter4j.org/javadoc/twitter4j/User.html#getMiniProfileImageURL()">Mini</a>|<a href="http://twitter4j.org/javadoc/twitter4j/User.html#getOriginalProfileImageURL()">Original</a>ProfileImageURL()</td></tr>
<tr><td>getBlockingUsersIDs()</td><td><a href="http://twitter4j.org/javadoc/twitter4j/api/UsersResources.html#getBlocksIDs()">getBlocksIDs()</td></tr>
<tr><td>getLocationTrends()</td><td><a href="http://twitter4j.org/javadoc/twitter4j/api/TrendsResources.html#getPlaceTrends(int)">getPlaceTrends()</td></tr>
<tr><td>getAllUserLists()</td><td><a href="http://twitter4j.org/javadoc/twitter4j/api/ListsResources.html#getUserLists(long)">getUserLists()</td></tr>
<tr><td>getAvailableTrends(GeoLocation)</td><td><a href="http://twitter4j.org/javadoc/twitter4j/api/TrendsResources.html#getClosestTrends(twitter4j.GeoLocation)">getClosestTrends(GeoLocation)</td></tr>
<tr><td>getFavorites(int)</td><td><a href="http://twitter4j.org/javadoc/twitter4j/api/FavoritesResources.html#getFavorites(long,%20twitter4j.Paging)">getFavorites(Paging paging)</td></tr>
<tr><td>getBlockingUsers()</td><td><a href="http://twitter4j.org/javadoc/twitter4j/api/UsersResources.html#getBlocksList(long)">getBlocksList(cursor)</td></tr>
<tr><td>getPublicTimeline()</td><td>N/A</td></tr>
<tr><td>AccountTotals getAccountTotals()</td><td>N/A</td></tr>
<tr><td>IDs getNoRetweetIds()</td><td>N/A</td></tr>
<tr><td>IDs getRetweetedByIDs(long)</td><td>N/A</td></tr>
<tr><td>IDs getRetweetedByIDs(long, Paging)</td><td>N/A</td></tr>
<tr><td>getRetweetedByMe()</td><td>N/A</td></tr>
<tr><td>getRetweetedByUser()</td><td>N/A</td></tr>
<tr><td>getRetweetedToMe()</td><td>N/A</td></tr>
<tr><td>getRetweetedToUser()</td><td>N/A</td></tr>
<tr><td>getRetweetsOfMe()</td><td>N/A</td></tr>
<tr><td>getDailyTrends()</td><td>N/A</td></tr>
<tr><td>getWeeklyTrends()</td><td>N/A</td></tr>
<tr><td>getRetweetedBy()</td><td>N/A</td></tr>
<tr><td>boolean existsBlock()</td><td>N/A</td></tr>
<tr><td>boolean existsFriendship()</td><td>N/A</td></tr>
<tr><td>boolean test()</td><td>N/A</td></tr>
</table>
<br>
$[ja:- OAuth必須化]$[en:- OAuth requirement]<br>
$[ja:Twitter4J 3.0.xは<a href="https://dev.twitter.com/docs/api/1.1">Twitter API 1.1</a>を使います。以前のバージョンと異なり全てのメソッドコールはOAuth認可が必須になります。]
$[en:Twitter4J 3.0.x hits <a href="https://dev.twitter.com/docs/api/1.1">Twitter API 1.1</a>. And all Twitter API 1.1 endpoints including the Search API require OAuth authorization unlike Twitter API 1.0 / previous versions of Twitter4J.]<br>
<br>
$[ja:- 検索APIとREST APIの統合]$[en:- Search API is finally part of REST API]<br>
$[ja:歴史的な理由から検索APIとREST APIは分けられており、search()メソッドの返すQueryResultはTweetインスタンスを返しており他のメソッドの返すStatusインスタンスとは若干ことなるフィールドを持っていました。<a href="https://dev.twitter.com/docs/api/1.1">Twitter API 1.1</a>でようやく検索APIとREST APIは統合され、QueryResultはStatusインスタンスを返すようになり、Tweetインターフェースは廃止されました。]
$[en:For the historical reasons, the Search API had been differ from the REST API and response schema was slightly different. Finally the Search API is part of the REST API and QueryResult returns Status instance. Tweet interface is removed from version 3.0.0.]<br>
<br>
$[ja:- Androidビルドの廃止]$[en:- Retirement of Android build]<br>
$[ja:これまで若干コンパクトなAndroid用ビルドを提供していましたが、バージョン3.0.3で本体をコンパクト化し、Android用ビルドは廃止しました。Androidプラットフォームは引き続きサポートします。通常版のビルドをお使いください。]
$[en:As of version 3.0.3, Twitter4J for Android will be no longer provided. This is because the regular version got slimmed down and there is no reason to release separate binaries. You can use the regular version on the Android platform.]<br>
<br>
$[ja:- Java 1.4.xサポートの廃止]$[en:- Java 1.4.x no longer supported]<br>
$[ja:Twitter4J 3.0.xはJava 5以降をサポートします。Java 1.4.xとTwitter API 1.1両方に対応したバージョンのTwitter4Jの提供は個別対応になります。何らかの理由でJava 1.4.xでTwitter4Jを引き続き使う必要がある場合はyusuke@mac.comへお問い合わせください。]
$[en:Twitter4J 3.0.x is compatible with Java 5+. Twitter4J compatible with Java 1.4.x &amp; Twitter API 1.1 could be provide on a request basis. If you need to stick with Java 1.4.x for some reasons, contact yusuke@mac.com.]<br>

</tag:h2>
<tag:h2 name="migration21x-22x" title="$[ja:バージョン 2.1.x から 2.2.x への移行]$[en:Migrating from 2.1.x to 2.2.x]">
$[ja:- まずプロジェクトの再ビルドを！<br>
バージョン2.2.0 は旧バージョンから若干の非互換箇所があります。旧バージョンを利用していたプロジェクトでバージョン2.2.0を利用する場合は必ずプロジェクトの再ビルドを行ってください。]
$[en:- Rebuild your project first!<br>
Version 2.2.0 is slightly incompatible with previous versions. Projects that have been using previous versions are required to be rebuilt before using Version 2.2.0.]<br>
<br>
$[ja:- twitter4j.http.*パッケージの移行]
$[en:- migration of twitter4j.http.* package] (<a href="http://jira.twitter4j.org/browse/TFJ-559">TFJ-559</a>)<br>
$[ja:twitter4j.http.* は twitter4j.auth.* へ移動しました。<br>]
$[en:classes in twitter4j.http.* has been migrated to twitter4j.auth.*.<br>]
<br>
$[ja:- Basic認証の廃止]
$[en:- retirement of Basic authentication] (<a href="http://jira.twitter4j.org/browse/TFJ-560">TFJ-560</a>)<br>
$[ja:Basic認証の廃止に伴いTwitterFactory.getInstance(screenName,password)は廃止されました。xAuthでアクセストークンを取得するには<a href="http://twitter4j.org/javadoc/core/twitter4j/auth/OAuthSupport.html#getOAuthAccessToken(java.lang.String,%20java.lang.String)">Twitter.getOAuthAccessToken(screenName, password)</a>を使います。getOAuthAuthorizedInstance(Authorization) は廃止され、getInstance(Authorization)になりました。<br>]
$[en:TwitterFactory.getInstance(screenName,password) was retired. To get an access token using xAuth flow, use <a href="http://twitter4j.org/javadoc/core/twitter4j/auth/OAuthSupport.html#getOAuthAccessToken(java.lang.String,%20java.lang.String)">Twitter.getOAuthAccessToken(screenName, password)</a>. getOAuthAuthorizedInstance(Authorization) was retired, use getInstance(Authorization) instead.<br>]
<br>
$[ja:- 非同期APIとストリーミングAPI専用artifactの導入]
$[en:- introduction of new artifacts for async API and streaming API] (<a href="http://jira.twitter4j.org/browse/TFJ-345">TFJ-345</a>)<br>
$[ja:非同期APIはtwitter4j-async(twitter4j-coreに依存)へ、ストリーミングAPIはtwitter4j-stream(twitter4j-asyncに依存)へ移動しました。<br>]
$[en:Async API has been migrated to twitter4j-async artifact (depending on twitter4j-core), Streaming API support has been migrated to twitter4j-stream artifact (depending on twitter4j-async).<br>]
<br>
$[ja:- JSONストアの無効化]
$[en:- JSON store is disabled by defalt] (<a href="http://jira.twitter4j.org/browse/TFJ-562">TFJ-562</a>)<br>
$[ja:Twitterからのレスポンスの生JSONは<a href="http://twitter4j.org/javadoc/twitter4j/json/DataObjectFactory.html#getRawJSON(java.lang.Object)">DataObjectFactory#getRawJSON()</a>で取得できますが、デフォルトでこの機能は無効になりました。生のJSONへアクセスが必要なアプリケーションではtwitte4j.proeperties内でjsonStoreEnabledオプションをtrueに設定してください。<br>]
$[en:You can get the raw json form of response from the API using<a href="http://twitter4j.org/javadoc/twitter4j/json/DataObjectFactory.html#getRawJSON(java.lang.Object)">DataObjectFactory#getRawJSON()</a>. But as of version 2.2.0, the feature is disabled by default. You can enable the feature by setting jsonStoreEnabled configuration parameter to true in twitter4j.properties.<br>]
<br>
$[ja:- ライセンスの変更]
$[en:- licensing] (<a href="http://jira.twitter4j.org/browse/TFJ-446">TFJ-446</a>)<br>
$[ja:ライセンスはBSDからApache License 2.0へ変更になりました。<br>]
$[en:Note that Twitter4J is released under Apache License 2.0 from version 2.2.0.<br>]
<br>
</tag:h2>
<tag:h2 name="2.1" title="$[ja:バージョン]$[en:Version] 2.1">
$[ja:2010/1/24 リリース: 最新APIセットを全てサポート。パフォーマンス、メモリ消費改善。Android 完全対応。]$[en:Released on 1/24/2010: Supports all existing methods. Performance and memory footprint improvements. Better Android compatiblity.]
</tag:h2>
<tag:h2 name="migration20x-21x" title="$[ja:バージョン 2.0.x から 2.1.x への移行]$[en:Migrating from 2.0.x to 2.1.x]">
$[ja:- まずプロジェクトの再ビルドを！<br>
バージョン2.1.0 は旧バージョンから若干の非互換箇所があります。旧バージョンを利用していたプロジェクトでバージョン2.1.0を利用する場合は必ずプロジェクトの再ビルドを行ってください。]
$[en:- Rebuild your project first!<br>
Version 2.1.0 is slightly incompatible with older versions. Projects that have been using older versions are required to be rebuilt before using Version 2.1.0.]<br>
<br>
$[ja:- artifactId、groupId の変更]
$[en:- artifactId, groupId  changes] (<a href="http://jira.twitter4j.org/browse/TFJ-225">TFJ-225</a>)<br>
$[ja:artifactId は twiter4j から twitter4j-core へ変更されました。また groupId は net.homeip.yusuke から org.twitter4j へ変更されました。<br>]
$[en:artifactId has been changed from twiter4j to twitter4j-core, and groupId has been changed from net.homeip.yusuke to org.twitter4j.<br>]
<br>
$[ja:- ファクトリクラスの導入、オブジェクトの不変(immutable)化]
$[en:- Introduction of Factory classes] (<a href="http://jira.twitter4j.org/browse/TFJ-231">TFJ-231</a>)<br>
$[ja:Twitter, AsyncTwitter, TwitterStream のコンストラクタは非推奨となり、代わりに TwitterFactory, AsyncTwitterFactory, TwitterStreamFactory が導入されました。(<a href="http://jira.twitter4j.org/browse/TFJ-231">TFJ-231</a>)<br>
Twitter, AsyncTwitter, TwitterStream は基本的に不変(immutable)オブジェクトとなり、OAuth関連以外の setter は廃止され、よりスレッドセーフになりました。<br>
不変性(immutableness)に関しての例外は OAuth のトークンに関する状態です。OAuth を利用する場合は 1. Token なし 2. RequestToken 取得済み 3. AccessToken 取得済み という状態に変化します。AccessToken 取得済みの状態で RequestToken を取得しようとすると IllegalStateException が投げられます。<br>]
$[en:Pubic constructors of Twitter, AsyncTwitter and TwitterStream are now deprecated and TwitterFactory, AsyncTwitterFactory and TwitterStreamFactory have been introduced (<a href="http://jira.twitter4j.org/browse/TFJ-231">TFJ-231</a>).<br>
Twitter, AsyncTwitter and TwitterStream are now basically immutable and thread safe than ever and most of all setters have been retired.<br>
The exception of immutableness is about OAuth's token status. (Async)Twitter has three states. 1. no Token. 2. RequestToken acquired (set). 3. AccessToken acruired (set). Once you acruired AccessToken, you won't be able to acruire RequestToken from the instance anymore and you'll get IllegalStateException instead.<br>]
<br>
$[ja:- AsyncTwitter / TwitterListener 関連の変更]
$[en:- AsyncTwitter / TwitterListener changes] (<a href="http://jira.twitter4j.org/browse/TFJ-244">TFJ-244</a>,<a href="http://jira.twitter4j.org/browse/TFJ-244">TFJ-246</a>,<a href="http://jira.twitter4j.org/browse/TFJ-284">TFJ-284</a>)<br>
$[ja:AsyncTwitter は Twitter クラスから独立しました。AsyncTwitter クラスは同期メソッドを持たず、メソッド名から 〜Async がとれました。またメソッドコール毎にリスナクラスを指定するのではなく、事前にファクトリにリスナクラスを渡しておくことでよりスレッドセーフな実装になりました。(<a href="http://jira.twitter4j.org/browse/TFJ-284">TFJ-284</a>)<br>
TwitterListener.onException(TwitterException te, int method) は廃止され、替わりに TwitterListener.onException(TwitterException te, TwitterMethod method) が導入されました。
TwiteterListener を引数にとらない非同期メソッドは廃止されました。(<a href="http://jira.twitter4j.org/browse/TFJ-244">TFJ-246</a>)<br>]
$[en:AsyncTwitter is now independent from Twitter class. AsyncTwitter doesn't have any sync methods anymore, and all async methods renamed from *Async to *. Those method now don't take TwitterListener anymore and you will need to pass your own TwitterListener implementation to the constructor or the AsyncTwitterFactory (<a href="http://jira.twitter4j.org/browse/TFJ-284">TFJ-284</a>).<br>
TwitterListener.onException(TwitterException te, int method) has been retired, and TwitterListener.onException(TwitterException te, TwitterMethod method) is now available.<br>
Async methods that don't take TwitterListener were all retired (<a href="http://jira.twitter4j.org/browse/TFJ-244">TFJ-246</a>).<br>]
<br>
$[ja:- Streaming API サポートの削除、リミット通知対応]
$[en:- Streaming API supports deletion and track limit notices] (<a href="http://jira.twitter4j.org/browse/TFJ-210">TFJ-210</a>)<br>
$[ja:<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusListener.html#onDeletionNotice(twitter4j.StatusDeletionNotice)">StatusListener.onDeletionNotice(StatusDeletionNotice)</a>,<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusListener.html#onTrackLimitationNotice(int)">StatusListener.onTrackLimitationNotice(int)</a> が導入されました。
これに伴 StatusStream の next メソッドシグニチャは
 <a href="http://twitter4j.org/en/oldjavadocs/2.0.10/twitter4j/StatusStream.html#next()">Status next()</a> から <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusStream.html#next(twitter4j.StatusListener)">void next(StatusListener listener)</a> へと変更されました。<br>]
$[en:<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusListener.html#onDeletionNotice(twitter4j.StatusDeletionNotice)">StatusListener.onDeletionNotice(StatusDeletionNotice)</a> and <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusListener.html#onTrackLimitationNotice(int)">StatusListener.onTrackLimitationNotice(int)</a> have been introduced.
The method signature of StatusStream#next has been changed from <a href="http://twitter4j.org/en/oldjavadocs/2.0.10/twitter4j/StatusStream.html#next()">Status next()</a> to <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/StatusStream.html#next(twitter4j.StatusListener)">void next(StatusListener listener)</a>.<br>]
<br>
<p>$[ja:- 非推奨メソッドの廃止(<a href="http://jira.twitter4j.org/browse/TFJ-113">TFJ-113</a>,<a href="http://jira.twitter4j.org/browse/TFJ-113">TFJ-240</a>)<br>
バージョン2.0.10で非推奨となっていたメソッド全てとgetFeatured()は廃止(削除)されました。<br>
<br>]
$[en:- Retirement of deprecated methods (<a href="http://jira.twitter4j.org/browse/TFJ-113">TFJ-113</a>,<a href="http://jira.twitter4j.org/browse/TFJ-113">TFJ-240</a>)<br>
All methods marked as deprecated at version 2.0.10, and getFeatured() have been retired (removed).<br>
<br>]
$[ja:- getFriendsStatuses() と getFollowersStatuses()(<a href="http://jira.twitter4j.org/browse/TFJ-234">TFJ-234</a>) のカーソルベースのぺージング<br>
getFriendsStatuses(Paging) と getFollowersStatuses(Paging) は廃止されました。<br>
代わりに<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFriendsStatuses(long)">getFriendsStatuses(long)</a> と <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFollowersStatuses(java.lang.String,%20long)">getFollowersStatuses(long)</a>でカーソルベースのページングを行えます。<br>
これらのメソッドは<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/CursorSupport.html">CursorSupport</a>を実装する<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/PagableResponseList.html">PagableResponseList</a>&lt;twitter4j.List&gt; を返します。<br>
パラメータなしの getFriendsStatuses() と getFollowersStatuses() は getFriendsStatuses(-1l) または getFollowersStatuses(-1l) を呼び出すのと同じで、最初のページを返します。<br>
getFriendsStatuses(前回のレスポンス.getNextCursor()) を呼ぶことで次のぺージを取得できます。<br>
<br>]
$[en:- Cursor based pagenation with getFriendsStatuses() and getFollowersStatuses() (<a href="http://jira.twitter4j.org/browse/TFJ-234">TFJ-234</a>)<br>
getFriendsStatuses(Paging) and getFollowersStatuses(Paging) have been retired.<br>
Instead, you can use cursor based pagenation with <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFriendsStatuses(long)">getFriendsStatuses(long)</a> and <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFollowersStatuses(java.lang.String,%20long)">getFollowersStatuses(long)</a>.<br>
They return <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/PagableResponseList.html">PagableResponseList</a>&lt;twitter4j.List&gt; which implements <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/CursorSupport.html">CursorSupport</a>.<br>
getFriendsStatuses() and getFollowersStatuses() (with no parameter) are handy methods which are equivalent calls to getFriendsStatuses(-1l) and getFollowersStatuses(-1l) which retrieve the first page.<br>
Call getFriendsStatuses(previousResponse.getNextCursor()) to retrieve the next page.<br>
<br>]
$[ja:- java.util.List に替わる twitter4j.ResponseList<br>
これまでクライアントコードはTwitterResponse のリストを返すメソッドを利用する場合、rate limit status を確認するのにリスト中の要素を見なければなりませんでした。<br>
バージョン2.1.0ではjava.util.List の替わりに rate limit status を直接確認できる <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/ResponseList.html">twitter4j.ResponseList</a> を返します。 <br>
<br>]
$[en:- twitter4j.ResponseList instead of java.util.List<br>
Previously, client codes using methods that returns List of TwitterResponse need to pick one element inside the list to check the rate limit status.<br>
Now those methods returns <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/ResponseList.html">twitter4j.ResponseList</a> instead of java.util.List, and rate limit status is available directly through the ResponseList.<br>
<br>]
$[ja:- screen_name と user_id の曖昧さの除去]
$[en:- Disambiguation of screen name and user id] (<a href="http://jira.twitter4j.org/browse/TFJ-207">TFJ-207</a>)<br>
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
$[ja:- Rate limit status の全面導入]
$[en:- Rate limit status is everywhere]<br>
$[ja:TwitterResponse に getRateLimitStatus() が導入されました。<br>
また、Twitter のメソッドが返すリストの各要素の getRateLimitStatus() は null を返します。(Pagable)ResponseList.getRateLimitStatus() を代わりに使ってください。]
$[en:TwitterResponse now implements getRateLimitStatus().
 getRateLimitStatus() of elements in the list returned by Twitter methods return null. Use (Pagable)ResponseList.getRateLimitStatus() instead.]<br>
<br>
$[ja:導入されたメソッド:]
$[en:Introduced with this change:]<br>
 TwitterResponse.getRateLimitStatus()<br>
<br>
$[ja:削除されたクラス、メソッド:]
$[en:Removed with this change:]<br>
 TwitterResponse.getRateLimitLimit() : $[en:use] RateLimitStatus.getHourlyLimit() $[ja:をかわりに使ってください。]$[en:instead.]<br>
 TwitterResponse.getRateLimitRemaining() : $[en:use] RateLimitStatus.getRemainingHits() $[ja:をかわりに使ってください。]$[en:instead.]<br>
 TwitterResponse.getRateLimitReset() : $[en:use] RateLimitStatus.getResetTime() $[ja:をかわりに使ってください。]$[en:instead.]<br>
<br>
$[ja:- GeoLoction クラスの導入]
$[en:- Introduction of GeoLoction class] (<a href="http://jira.twitter4j.org/browse/TFJ-217">TFJ-217</a>)<br>
<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/GeoLocation.html">GeoLocation</a>$[ja:クラスが導入されました。Status中に geo location が含まれているかどうかは null != status.getGeoLocation() で確認できます。]$[en: class has been introduced. Now you can determine the existence of a geo location in a Status with null != status.getGeoLocation().]<br>
<br>
$[ja:削除されたクラス、メソッド:]
$[en:Removed with this change:]<br>
Status.<a href="http://twitter4j.org/javadoc/twitter4j/Status.html#getLongitude()">getLongitude()</a><br>
Status.<a href="http://twitter4j.org/javadoc/twitter4j/Status.html#getLatitude()">getLatitude()</a><br>
Query.<a href="http://twitter4j.org/javadoc/twitter4j/Query.html#setGeoCode(double,%20double,%20double,%20java.lang.String)">setGeoCode(double latitude, double longitude, double radius, String unit)</a><br>
Twitter.<a href="http://twitter4j.org/javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String,%20double,%20double)">updateStatus(String status, double latitude, double longitude)</a><br>
Twitter.<a href="http://twitter4j.org/javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String,%20long,%20double,%20double)">updateStatus(String status, long inReplyToStatusId, double latitude, double longitude)</a><br>
<br>
$[ja:導入されたクラス、メソッド:]
$[en:Introduced with this change:]<br>
twitter4j.<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/GeoLocation.html">GeoLocation</a><br>
Status.<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Status.html#getGeoLocation()">getGeoLocation()</a><br>
Query.<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Query.html#setGeoCode(twitter4j.GeoLocation,%20double,%20java.lang.String)">setGeoCode(GeoLocation location, double radius, String unit)</a><br>
Twitter.<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#updateStatus(java.lang.String,%20twitter4j.GeoLocation)">updateStatus(String status, GeoLocation location)</a><br>
Twitter.<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#updateStatus(java.lang.String,%20long,%20twitter4j.GeoLocation)">updateStatus(String status, long inReplyToStatusId, GeoLocation location)</a><br>
AsyncTwitter.<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/AsyncTwitter.html#updateStatusAsync(java.lang.String,%20twitter4j.GeoLocation,%20twitter4j.TwitterListener)">updateStatusAsync(String status, GeoLocation location, TwitterListener listener)</a><br>
AsyncTwitter.<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/AsyncTwitter.html#updateStatusAsync(java.lang.String,%20long,%20twitter4j.GeoLocation,%20twitter4j.TwitterListener)">updateStatusAsync(String status, long inReplyToStatusId, GeoLocation location, TwitterListener listener)</a><br>
<br>

$[ja:- メソッド名の修正]
$[en:- Method name refactors] (<a href="http://jira.twitter4j.org/browse/TFJ-245">TFJ-245</a>,<a href="http://jira.twitter4j.org/browse/TFJ-264">TFJ-264</a>)<br>
$[ja:削除されたクラス、メソッド:]
$[en:Removed with this change:]<br>
<a href="http://twitter4j.org/en/oldjavadocs/2.0.10/twitter4j/Twitter.html#updateDeliverlyDevice(twitter4j.Twitter.Device)">Twitter.updateDeliverlyDevice()</a><br>
<a href="http://twitter4j.org/en/oldjavadocs/2.0.10/twitter4j/AsyncTwitter.html#updateDeliverlyDeviceAsync(twitter4j.Twitter.Device,%20twitter4j.TwitterListener)">AsyncTwitter.updateDeliverlyDeviceAsync()</a><br>
<a href="http://twitter4j.org/en/oldjavadocs/2.0.10/twitter4j/Twitter.html#rateLimitStatus()">Twitter.rateLimitStatus()</a><br>
<a href="http://twitter4j.org/en/oldjavadocs/2.0.10/twitter4j/AsyncTwitter.html#rateLimitStatusAsync(twitter4j.TwitterListener)">AsyncTwitter.rateLimitStatus()</a><br>
<br>
$[ja:導入されたクラス、メソッド:]
$[en:Introduced with this change:]<br>
<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#updateDeliveryDevice(twitter4j.Device)">Twitter.updateDeliveryDevice()</a><br>
<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/AsyncTwitter.html#updateDeliveryDeviceAsync(twitter4j.Device,%20twitter4j.TwitterListener)">AsyncTwitter.updateDeliveryDeviceAsync()</a><br>
<a href="http://twitter4j.org/en/oldjavadocs/2.0.10/twitter4j/TwitterListener.html#updatedDeliverlyDevice(twitter4j.User)">TwitterListener.updatedDeliverlyDevice()</a><br>
<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterListener.html#updatedDeliveryDevice(twitter4j.User)">TwitterListener.updatedDeliveryDevice()</a><br>
<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getRateLimitStatus()">Twitter.getRateLimitStatus()</a><br>
<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/AsyncTwitter.html#getRateLimitStatusAsync(twitter4j.TwitterListener)">AsyncTwitter.getRateLimitStatus()</a><br>
<br>
$[ja:- TwitterResponse はクラスではなくなりました<br>
多くの場合、関係ありませんが、<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponse.html">TwitterResponse</a> は rate limit status のアクセサを意味するインターフェースになりました。もうレスポンスオブジェクトの親クラスではありません。より正確に、内部の話をするとバージョン2.1.0からほとんどのレスポンスクラスは<a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponseImpl.html">TwitterResponseImpl</a> を継承するようになりました。]
$[en:- TwitterResponse is not a class anymore.<br>
Shouldn't matter in most cases. <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponse.html">TwitterResponse</a> is now an interface representing just rate limit status accessors. It's not a super class of every response objects anymore. More specifically and internally, most of response classes are extending <a href="http://twitter4j.org/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponseImpl.html">TwitterResponseImpl</a> from Version 2.1.0.]
</pre>
</tag:h2>
<tag:h2 name="2.0" title="$[ja:バージョン]$[en:Version] 2.0">
$[ja:2009/04/19 リリース: OAuth, Twitpocalypse 問題に対応(バージョン2.0.8〜)]$[en:Released on 4/9/2009: OAuth supported version. Twitpocalypse safe (from version 2.0.8)]
</tag:h2>
<tag:h2 name="1.0" title="$[ja:バージョン]$[en:Version] 1.0">
$[ja:2007/06/09 リリース: 初版リリース]$[en:Released on 2007/06/09: initial release.]
</tag:h2>
</div>
</p>
</tag:skelton>