<%@page language="java" pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - JavaDoc">
<div class="javadoc">
    <a name="javaDoc"><h1>JavaDoc</h1></a>
<h2><a name="latst">$[ja:最新バージョン]$[en:Latest version]</a></h2>
<p><a href="./javadoc/index.html">$[ja:バージョン]$[en:Version] <include>latest-version.fragment</include> JavaDoc</a></p>

<h2><a name="latst">$[ja:最新スナップショット]$[en:Latest snapshot version]</a></h2>
<p><a href="./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">$[ja:バージョン]$[en:Version] <include>latest-SNAPSHOT-version.fragment</include> JavaDoc</a><br>
<a href="./oldjavadocs/<include>latest-version.fragment</include>-<include>latest-SNAPSHOT-version.fragment</include>/changes.html">diff from $[ja:バージョン]$[en:Version] <include>latest-version.fragment</include></a>
<h2><a name="latst">$[ja:バージョン2.0.xから2.1.xへの移行]$[en:Migration from 2.0.x to 2.1.x]</a></h2>
<p>- Retirement of deprecated methods<br>
All methods marked as deprecated at version 2.0.10 have been retired (removed).<br>
<br>
- Cursor based pagenation with getFriendsStatuses() and getFollowersStatuses()<br>
getFriendsStatuses(Paging) and getFollowersStatuses(Paging) have been retired.<br>
Instead, you can use cursor based pagenation with <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFriendsStatuses(long)">getFriendsStatuses(long)</a> and <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/Twitter.html#getFollowersStatuses(java.lang.String,%20long)">getFollowersStatuses(long)</a>.<br>
They return <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/PagableResponseList.html">PagableResponseList</a>&lt;twitter4j.List&gt; which implements <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/CursorSupport.html">CursorSupport</a>.<br>
<br>
- twitter4j.ResponseList instead of java.util.List<br>
Previously, client codes using methods that returns List of TwitterResponse need to pick one element inside the list to check the rate limit status.<br>
Now those methods returns <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/ResponseList.html">twitter4j.ResponseList</a> instead of java.util.List, and rate limit status is available through the ResponseList.<br>
<br>
- No more XML<br>
This is just an internal rework and no code change is required.<br>
All over Twitter4J methods are now using JSON based methods.<br>
This will significantly boost performance and workaround the XML parser bugs on the Android platform.<br>
-> <a href="http://code.google.com/p/android/issues/detail?id=2607">Issue 2607: org.apache.harmony.xml.parsers.DocumentBuilderImpl does not resolve unicode entity refs</a><br>
-> <a href="http://code.google.com/p/android/issues/detail?id=4666">Issue 4666: DocumentBuilder (XML DOM) doesn't support external entities</a><br>
<br>
- TwitterResponse is not a class anymore.<br>
Shouldn't matter in most cases. <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponse.html">TwitterResponse</a> is now an interface representing just rate limit status accessors. It's not a super class of every response objects anymore. More specifically and internally, most of response classes are extending <a href="http://yusuke.homeip.net/twitter4j/en/oldjavadocs/2.1.0-SNAPSHOT/twitter4j/TwitterResponseImpl.html">TwitterResponseImpl</a> from Version 2.1.0.
</pre>
</p>

<h2><a name="oldVersions">$[ja:古いバージョン]$[en:Old Versions]</a></h2>
<p><%@ include file="oldjavadocs.jsp"%>
</p>
</div>
</tag:skelton>