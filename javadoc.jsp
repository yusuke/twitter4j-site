<%@page language="java" pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - JavaDoc">
<div class="javadoc">
    <a name="javaDoc"><h1>JavaDoc</h1></a>
<h2><a name="latst">$[ja:最新バージョン]$[en:Latest version]</a></h2>
<p><a href="./javadoc/index.html">･$[ja:バージョン]$[en:Version] <include>latest-version.fragment</include> JavaDoc</a></p>

<h2><a name="latst">$[ja:最新スナップショット]$[en:Latest snapshot version]</a></h2>
<p><a href="./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">･$[ja:バージョン]$[en:Version] <include>latest-SNAPSHOT-version.fragment</include> JavaDoc</a><br>
<a href="./oldjavadocs/<include>latest-version.fragment</include>-<include>latest-SNAPSHOT-version.fragment</include>/changes.html">･JavaDoc diff from $[ja:バージョン]$[en:Version] <include>latest-version.fragment</include></a>
<h2><a name="migration">$[ja:バージョン2.0.xから2.1.xへの移行]$[en:Migrating from 2.0.x to 2.1.x]</a></h2>
<p>$[ja:- 非推奨メソッドの廃止<br>
バージョン2.0.10で非推奨となっていたメソッドは全て廃止(削除)されました。<br>
<br>]
$[en:- Retirement of deprecated methods<br>
All methods marked as deprecated at version 2.0.10 have been retired (removed).<br>
<br>]
$[en:- getFriendsStatuses() と getFollowersStatuses() のカーソルベースのぺージング<br>
getFriendsStatuses(Paging) と getFollowersStatuses(Paging) は廃止されました。<br>
代わりに<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFriendsStatuses(long)">getFriendsStatuses(long)</a> と <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFollowersStatuses(java.lang.String,%20long)">getFollowersStatuses(long)</a>でカーソルベースのページングを行えます。<br>
これらのメソッドは<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/CursorSupport.html">CursorSupport</a>を実装する<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/PagableResponseList.html">PagableResponseList</a>&lt;twitter4j.List&gt; を返します。<br>
<br>]
$[en:- Cursor based pagenation with getFriendsStatuses() and getFollowersStatuses()<br>
getFriendsStatuses(Paging) and getFollowersStatuses(Paging) have been retired.<br>
Instead, you can use cursor based pagenation with <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFriendsStatuses(long)">getFriendsStatuses(long)</a> and <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFollowersStatuses(java.lang.String,%20long)">getFollowersStatuses(long)</a>.<br>
They return <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/PagableResponseList.html">PagableResponseList</a>&lt;twitter4j.List&gt; which implements <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/CursorSupport.html">CursorSupport</a>.<br>
<br>]
$[ja:- java.util.List に替わる twitter4j.ResponseList<br>
これまでクライアントコードはTwitterResponse のリストを返すメソッドを利用する場合、rate limit status を確認するのにリスト中の要素を見なければなりませんでした。<br>
バージョン2.1.0ではjava.util.List の替わりに rate limit status を直接確認できる <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/ResponseList.html">twitter4j.ResponseList</a> を返します。 <br>
<br>]
$[en:- twitter4j.ResponseList instead of java.util.List<br>
Previously, client codes using methods that returns List of TwitterResponse need to pick one element inside the list to check the rate limit status.<br>
Now those methods returns <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/ResponseList.html">twitter4j.ResponseList</a> instead of java.util.List, and rate limit status is available directly through the ResponseList.<br>
<br>]
$[ja:- XML 利用の廃止<br>
これは内部のリファクタリングで、コード変更は必要ありません。<br>
全ての Twitter4J のメソッドは JSON ベースのメソッドを使うようになりました。<br>
これは JIT コンパイラを持たない Android 上で飛躍的にパフォーマンスを改善し、また Dalvik の XML パーサのひどいバグを回避します。<br>
・ <a href="http://code.google.com/p/android/issues/detail?id=2607">Issue 2607: org.apache.harmony.xml.parsers.DocumentBuilderImpl does not resolve unicode entity refs</a><br>
・ <a href="http://code.google.com/p/android/issues/detail?id=4666">Issue 4666: DocumentBuilder (XML DOM) doesn't support external entities</a><br>
<br>]
$[en:- No more XML, not any more<br>
This is just an internal rework and no code change is required.<br>
All over Twitter4J methods are now using JSON based methods.<br>
This will significantly boost performance on Android platforms (which doesn't implement JIT compiler :( ) and workaround the Dalvik's horrible XML parser bugs of the Dalvik JVM.<br>
-&gt; <a href="http://code.google.com/p/android/issues/detail?id=2607">Issue 2607: org.apache.harmony.xml.parsers.DocumentBuilderImpl does not resolve unicode entity refs</a><br>
-&gt; <a href="http://code.google.com/p/android/issues/detail?id=4666">Issue 4666: DocumentBuilder (XML DOM) doesn't support external entities</a><br>
<br>]
$[ja:- TwitterResponse はクラスではなくなりました<br>
多くの場合、関係ありませんが、<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponse.html">TwitterResponse</a> は rate limit status のアクセサを意味するインターフェースになりました。もうレスポンスオブジェクトの親クラスではありません。より正確に、内部の話をするとバージョン2.1.0からほとんどのレスポンスクラスは<a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponseImpl.html">TwitterResponseImpl</a> を継承するようになりました。]
$[en:- TwitterResponse is not a class anymore.<br>
Shouldn't matter in most cases. <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponse.html">TwitterResponse</a> is now an interface representing just rate limit status accessors. It's not a super class of every response objects anymore. More specifically and internally, most of response classes are extending <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponseImpl.html">TwitterResponseImpl</a> from Version 2.1.0.]
</pre>
</p>

<h2><a name="oldVersions">$[ja:古いバージョン]$[en:Old Versions]</a></h2>
<p><%@ include file="oldjavadocs.jsp"%>
</p>
</div>
</tag:skelton>