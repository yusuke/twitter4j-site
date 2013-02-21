<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@attribute name="title" required="true" %>
<%@attribute name="description" required="true" %>
<%@attribute name="path" required="true" %>
<html>
$[ja:<head xml:lang="ja" lang="ja">]$[en:<head xml:lang="en" lang="en">]
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="$[ja:ja]$[en:en]">
    <meta name="verify-v1" content="YFpQGqxuw7kZYOQ2M/HWLOJEjRhLTyoH4sIP2sQf1wA="/>
    <link rel="shortcut icon" href="http://twitter4j.org/$[ja:ja]$[en:en]/favicon.ico" type="image/x-icon">
    <title><%=title%></title>
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.0.4/css/bootstrap-combined.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/lightbox/lightbox.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <script type="text/javascript" src="/lightbox/spica.js"></script>
    <script type="text/javascript" src="/lightbox/lightbox_plus.js"></script>
    <script type="text/javascript" src="/js/gracefulscroll.js"></script>

    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@t4j_news">
    <meta name="twitter:creator" content="@yusuke">
    <meta name="og:url" content="<%=path%>">
    <meta name="og:title" content="<%=title%>">
    <meta name="og:description" content="<%=description%>">
    <meta name="og:image" content="http://twitter4j.org/images/twitter4j.png">
</head>
<body>
<script>
    var submenu;
</script>
<div class="center container" id="center">
    <a name="top"></a>
    <div class="row">

        <div class="span3 left">
            <tag:left/>
        </div>
        <div class="span9 content" id="content"><br>
            <a href="./index.html"><img src="./images/twitter4j-logo.png"></a>
            <center>
                <include>adsense468x15.html</include>
                <br>
                <include>adsense468x60.html</include>
            </center>
            <jsp:doBody/>
            <center>
                <include>adsense468x60.html</include>
            </center>
        </div>
    </div>
</div>
<include>urchin.html</include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.0.4/js/bootstrap.min.js"></script>
<script>
    if (submenu) {
        var h = "";
        for (var i = 0; i < submenu.length; i++) {
            h = h + "<li><a href='" + currentPage + "#" + submenu[i]["name"] + "' onclick='return scrollGracefully(this.href)'>" + submenu[i]["title"] + "</a></li>";
        }
        if (document.getElementById(currentPage)) {
            document.getElementById(currentPage).style.display = (-1 != currentPage.indexOf(currentPage)) ? "block" : "none";
            document.getElementById(currentPage).innerHTML = h;
        }
    }
</script>
</body>
</html>
