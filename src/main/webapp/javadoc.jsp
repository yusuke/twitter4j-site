<%@page language="java" pageEncoding="UTF-8" session="false" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - JavaDoc"
             description="Twitter4J JavaDoc"
             path="http://twitter4j.org/$[ja:ja]$[en:en]$[ko:ko]/javadoc.html">
    <div class="javadoc">
        <a name="javaDoc"><h1>JavaDoc</h1></a>
        <tag:h2 name="latest" title="$[ja:最新バージョン]$[en:Latest version]$[ko:최신버전]">
            <a href="/javadoc/index.html">･twitter4j-
                <include>latest-version.fragment</include>
                JavaDoc</a><br>
        </tag:h2>

        <tag:h2 name="latest-snapshot" title="$[ja:最新安定ビルド]$[en:Latest stable build]$[ko:최신 안정 빌드]">
            <a href="/oldjavadocs/<include>latest-SNAPSHOT-version.fragment</include>/index.html">･twitter4j-
                <include>latest-SNAPSHOT-version.fragment</include>
                JavaDoc</a><br>
            <a href="/oldjavadocs/<include>latest-version.fragment</include>-<include>latest-SNAPSHOT-version.fragment</include>/changes.html">･$[ja:バージョン
                <include>latest-version.fragment</include>
                からの JavaDoc diff]$[en:JavaDoc diff from Version]$[ko:버전
                <include>latest-version.fragment</include>
                부터의 JavaDoc diff]
                <include>latest-version.fragment</include>
            </a>

            <p>･$[ja:バージョン]$[en:version]$[ko:버전] 3.0.x<br>
                <%@ include file="oldjavadocs30x.jsp" %>
            </p>
            <a href="http://twitter4j.org/oldjavadocs/2.2.6-3.0.0/changes.html">$[ja:バージョン]$[en:version]$[ko:버전] 2.2.6-3.0.0</a><br>
            <br>

            <p>･$[ja:バージョン]$[en:version]$[ko:버전] 2.2.x<br>
                <%@ include file="oldjavadocs22x.jsp" %>
            </p>
            <a href="http://twitter4j.org/oldjavadocs/2.1.12-2.2.6/changes.html">$[ja:バージョン]$[en:version]$[ko:버전]
                2.1.12-2.2.6</a><br>
            <br>

            <p>･$[ja:バージョン]$[en:version]$[ko:버전] 2.1.x<br>
                <%@ include file="oldjavadocs21x.jsp" %>
            </p>
        </tag:h2>

        <tag:h2 name="oldVersions" title="$[ja:古いバージョンの JavaDoc と差分]$[en:Old JavaDocs and diffs]$[ko:오래된 버전의 JavaDoc 와의 diff]">
            <a href="/oldjavadocs/2.0.10-2.1.0/changes.html">･JavaDoc diff from 2.0.10 to 2.1.0</a><br>

            <p>･$[ja:バージョン]$[en:version]$[ko:버전] 2.0.x<br>
                <%@ include file="oldjavadocs.jsp" %>
            </p>
        </tag:h2>
    </div>
</tag:skelton>
