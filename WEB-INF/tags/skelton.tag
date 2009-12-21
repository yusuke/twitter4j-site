<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@attribute name="title" required="true"%>
<html>
$[ja:<head xml:lang="ja" lang="ja">]$[en:<head xml:lang="en" lang="en">]
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="Content-Language" content="$[ja:ja]$[en:en]">
<meta name="verify-v1" content="YFpQGqxuw7kZYOQ2M/HWLOJEjRhLTyoH4sIP2sQf1wA=" />
<link rel="shortcut icon" href="http://yusuke.homeip.net/twitter4j/$[ja:ja]$[en:en]/favicon.ico" type="image/x-icon">
  <title><%=title%></title>
  <link rel="stylesheet" href="css/style.css" type="text/css" >
  <link rel="stylesheet" href="lightbox/lightbox.css" type="text/css" >
  <script type="text/javascript" src="lightbox/spica.js"></script>
  <script type="text/javascript" src="lightbox/lightbox_plus.js"></script>
  <script type="text/javascript" src="js/gracefulscroll.js"></script>
</head>
<body>
<div class="center" id="center">
  <a name="top"><div onclick="location.href='./index.html'" class="logo"><div class="transparent"></div></div></a>
  <tag:left/>
  <div class="content" id="content"><br>
    <center><include>adsense468x60.html</include></center>
    <jsp:doBody/>
    <center><include>adsense468x60.html</include></center>
  </div>
<br>
</div>
<include>urchin.html</include>
</body>
</html>
