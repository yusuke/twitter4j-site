<%@page language="java" pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - JavaDoc">
<div class="javadoc">
    <a name="javaDoc"><h1>JavaDoc</h1></a>
<h2><a name="latst">$[ja:最新バージョン]$[en:Latest version]</a></h2>
<p><a href="./javadoc/index.html">$[ja:バージョン]$[en:Version] <include>latest-version.fragment</include></a></p>

<h2><a name="latst">$[ja:最新スナップショット]$[en:Latest snapshot version]</a></h2>
<p><a href="./javadoc/2.1.0-SNAPSHOT/index.html">$[ja:バージョン]$[en:Version] 2.1.0-SNAPSHOT</a><br>
<a href="./javadoc/2.1.0-SNAPSHOT/2.0.10-2.1.0-SNAPSHOT/changes.html">diff from $[ja:バージョン]$[en:Version] 2.0.10</a>
</p>

<h2><a name="oldVersions">$[ja:古いバージョン]$[en:Old Versions]</a></h2>
<p><%@ include file="oldjavadocs.jsp"%>
</p>
</div>
</tag:skelton>