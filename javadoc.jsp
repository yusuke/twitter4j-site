<%@page language="java" pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - JavaDoc">
<div class="javadoc">
    <a name="javaDoc"><h1>JavaDoc</h1></a>
<h2><a name="latst">$[ja:最新バージョン]$[en:Latest version]</a></h2>
<p><a href="./javadoc/index.html">･$[ja:バージョン]$[en:Version] <include>latest-version.fragment</include> JavaDoc</a></p>

<h2><a name="latst">$[ja:最新安定スナップショットビルド]$[en:Latest stable snapshot build]</a></h2>
<p><a href="./oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">･$[ja:バージョン]$[en:Version] <include>latest-SNAPSHOT-version.fragment</include> JavaDoc</a><br>
<a href="./oldjavadocs/<include>latest-version.fragment</include>-<include>latest-SNAPSHOT-version.fragment</include>/changes.html">･$[ja:バージョン <include>latest-version.fragment</include> からの JavaDoc diff]$[en:JavaDoc diff from Version] <include>latest-version.fragment</include></a>

<h2><a name="oldVersions">$[ja:古いバージョンの JavaDoc と差分]$[en:Old JavaDocs and diffs]</a></h2>
<a href="./oldjavadocs/2.0.10-2.1.0-core/changes.html">･JavaDoc diff from 2.0.10 to 2.1.0</a><br>

<p>･$[ja:バージョン]$[en:version] 2.0.x<br>
<%@ include file="oldjavadocs.jsp"%>
</p>
</div>
</tag:skelton>