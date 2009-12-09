<%@page language="java" pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - JavaDoc">
<div class="javadoc">
    <a name="javaDoc"><h1>JavaDoc</h1></a>
<h2><a name="latst">$[ja:最新バージョン]$[en:Latest version]</a></h2>
<p><a href="./javadoc/index.html">$[ja:バージョン]$[en:Version] <include>latest-version.fragment</include></a></p>

<h2><a name="latst">$[ja:最新スナップショット]$[en:Latest snapshot version]</a></h2>
<p><a href="./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">$[ja:バージョン]$[en:Version] <include>latest-SNAPSHOT-version.fragment</include></a><br>
<a href="./oldjavadocs/<include>latest-version.fragment</include>-<include>latest-SNAPSHOT-version.fragment</include>/changes.html">diff from $[ja:バージョン]$[en:Version] <include>latest-version.fragment</include></a>
<h2><a name="latst">$[ja:バージョン2.0.xから2.1.xへの移行]$[en:Migration from 2.0.x to 2.1.x]</a></h2>
<p><pre>
- Retirement of deprecated methods
All methods marked as deprecated at version 2.0.10 have been retired (removed).

- Cursor based pagenation with getFriendsStatuses() and getFollowersStatuses()
getFriendsStatuses(Paging) and getFollowersStatuses(Paging) have been retired.
Instead, you can use cursor based pagenation with getFriendsStatuses(long) and getFollowersStatuses(long).
They return PagableResponseList&lt;twitter4j.List&gt; which implements CursorSupport.

- twitter4j.ResponseList instead of java.util.List
Previously, client codes using methods that returns List of TwitterResponse need to pick one element inside the list to check the rate limit status.
Now those methods returns twitter4j.ResponseList instead of java.util.List, and rate limit status is available through the ResponseList.

- No more XML
This is just an internal rework and no code change is required.
All over Twitter4J methods are now using JSON based methods.
This will significantly boost performance and workaround the XML parser bugs on the Android platform.
-> Issue 2607: org.apache.harmony.xml.parsers.DocumentBuilderImpl does not resolve unicode entity refs
http://code.google.com/p/android/issues/detail?id=2607
->Issue 4666: DocumentBuilder (XML DOM) doesn't support external entities
http://code.google.com/p/android/issues/detail?id=4666

- TwitterResponse is not a class anymore.
Shouldn't matter in most cases.
TwitterResponse is now an interface representing just rate limit status accessors.
It's not a super class of every response objects anymore. More specifically and internally, most of response classes are extending TwitterResponseImpl from Version 2.1.0.
</pre>
</p>

<h2><a name="oldVersions">$[ja:古いバージョン]$[en:Old Versions]</a></h2>
<p><%@ include file="oldjavadocs.jsp"%>
</p>
</div>
</tag:skelton>