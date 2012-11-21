<%@page language="java" pageEncoding="UTF-8" session="false"%><%@taglib prefix="tag" tagdir="/WEB-INF/tags" %><tag:skelton title="Twitter4J - JavaDoc">
<div class="javadoc">
    <a name="javaDoc"><h1>JavaDoc</h1></a>
<tag:h2 name="latest" title="$[ja:最新バージョン]$[en:Latest version]">
<a href="/javadoc/index.html">･twitter4j-<include>latest-version.fragment</include> JavaDoc</a><br>
</tag:h2>

<tag:h2 name="latest-snapshot" title="$[ja:最新安定ビルド]$[en:Latest stable build]">
<a href="/oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">･twitter4j-<include>latest-SNAPSHOT-version.fragment</include> JavaDoc</a><br>
<a href="/oldjavadocs/<include>latest-version.fragment</include>-<include>latest-SNAPSHOT-version.fragment</include>/changes.html">･$[ja:バージョン <include>latest-version.fragment</include> からの JavaDoc diff]$[en:JavaDoc diff from Version] <include>latest-version.fragment</include></a>
<p>･$[ja:バージョン]$[en:version] 2.2.x<br>
<%@ include file="oldjavadocs22x.jsp"%></p>
<p>･$[ja:バージョン]$[en:version] 2.1.x<br>
<%@ include file="oldjavadocs21x.jsp"%></p>
</tag:h2>

<tag:h2 name="oldVersions" title="$[ja:古いバージョンの JavaDoc と差分]$[en:Old JavaDocs and diffs]">
<a href="/oldjavadocs/2.0.10-2.1.0/changes.html">･JavaDoc diff from 2.0.10 to 2.1.0</a><br>
<p>･$[ja:バージョン]$[en:version] 2.0.x<br>
<%@ include file="oldjavadocs.jsp"%>
</p>
</tag:h2>
</div>
</tag:skelton>