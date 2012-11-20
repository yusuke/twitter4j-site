<%@page pageEncoding="UTF-8"%>
<html>
<head xml:lang="ja" lang="ja">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="Content-Language" content="ja">
<meta name="verify-v1" content="YFpQGqxuw7kZYOQ2M/HWLOJEjRhLTyoH4sIP2sQf1wA=" />
<link rel="shortcut icon" href="http://twitter4j.org/ja/favicon.ico" type="image/x-icon">
  <title>Twitter5J - 2011年4月1日</title>
  <link rel="stylesheet" href="css/style.css" type="text/css" >
  <link rel="stylesheet" href="lightbox/lightbox.css" type="text/css" >
  <script type="text/javascript" src="lightbox/spica.js"></script>
  <script type="text/javascript" src="lightbox/lightbox_plus.js"></script>
  <script type="text/javascript" src="js/gracefulscroll.js"></script>
</head>
<body>
<script>
  var submenu;
</script>
<div class="center" id="center">
  <a name="top"><!--div onclick="location.href='./index.html'" class="logo"><div class="transparent"></div></div--></a>
  <div class="left">
	<div style="text-align:center"><a id="lang-link" href="../en/index.html">English</a> | Japanese
</div>
<script>
var currentPage = location.href.substring(location.href.lastIndexOf("/") + 1);
document.getElementById("lang-link").href="../en/"+ currentPage;

if(-1 != currentPage.indexOf("#")){
  currentPage = currentPage.substring(0,currentPage.indexOf("#"));
}
function setVisibility(id,page){
  if(document.getElementById(id)){
   document.getElementById(id).style.display = (-1 != currentPage.indexOf(page)) ? "block" : "none";
  }
}
</script>
<ul>
<li><a href="index.html#introduction" onclick="return scrollGracefully(this.href)">トップ</a></li>
 <ol style="display:none" id="index.html"></ol>
<li><a href="code-examples.html">コード例</a></li>
 <ol style="display:none" id="code-examples.html"></ol>
<li><a href="configuration.html">設定</a></li>
 <ol style="display:none" id="configuration.html"></ol>
<li><a href="./javadoc.html">JavaDoc</a></li>
 <ol style="display:none" id="javadoc.html"></ol>
<li><a href="api-support.html">サポートしているAPI</a></li>
 <ol style="display:none" id="api-support.html"></ol>
<li><a href="versions.html">バージョン</a></li>
 <ol style="display:none" id="versions.html"></ol>
<li><a href="development.html">開発</a></li>
 <ol style="display:none" id="development.html"></ol>
<li><a href="faq.html">よくある質問</a></li>
 <ol style="display:none" id="faq.html"></ol>
<li><a href="/jira/browse/TFJ#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel">変更履歴</a></li>
<li><a href="index.html#donation" onclick="return scrollGracefully(this.href)">寄付する</a></li>
<li><a href="./powered-by.html">Powered By Twitter4J</a></li>
 <ol style="display:none" id="powered-by.html"></ol>
</ul>
<center>
<a href="http://www.twitter.com/t4j_news"><img src="http://twitter-badges.s3.amazonaws.com/follow_bird-a.png" alt="Follow t4j_news on Twitter"/></a><br><br>
<iframe src="http://www.facebook.com/plugins/like.php?href=http://twitter4j.org/&amp;layout=box_count&amp;show_faces=true&amp;width=80&amp;action=like&amp;font=arial&amp;colorscheme=light&amp;height=80" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:80px; height:80px;" allowTransparency="true"></iframe>
<script src="http://widgets.twimg.com/j/2/widget.js"></script>
<script>
new TWTR.Widget({
  version: 2,
  type: 'search',
  search: 'twitter4j  OR #twitter4j OR from:t4j_news',
  interval: 6000,
  title: 'Twitter4J updates',
  subject: 'latest tweets about Twitter4J',
  width: 240,
  height: 300,
  theme: {
    shell: {
      background: '#8ec1da',
      color: '#ffffff'
    },
    tweets: {
      background: '#ffffff',
      color: '#444444',
      links: '#1985b5'
    }
  },
  features: {
    scrollbar: false,
    loop: true,
    live: true,
    hashtags: true,
    timestamp: true,
    avatars: true,
    toptweets: true,
    behavior: 'default'
  }
}).render().start();
</script><!--<script src="http://images.del.icio.us/static/js/blogbadge.js"></script>
<script type="text/javascript">
digg_url = document.location.href;
//digg_url = "http://twitter4j.org/";
digg_bgcolor = '#ff9900';
digg_skin = 'compact';
</script>
<br><script src="http://digg.com/tools/diggthis.js" type="text/javascript"></script>
-->
</center>
</div>

  <div class="content" id="content"><br>
  <a href="./index.html"><img src="./images/duke-twitter5-april-1st.png"></a>

<br>

    <center><h1>Twitter5Jについて重要なお知らせ</h1>Twitter5Jのリリースは諸般の事情により2012年4月1日に延期させていただきます。<br><br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2011年4月1日 Twitter4J デベロッパーチームより<br><br>
<a href="http://twitter.com/share" class="twitter-share-button" data-url="http://twitter4j.org/ja/april-1st-2011.html" data-text="Twitter5Jリリース -  クラウドへのツイート保存、Solr/Luceneによるツイート全文検索機能を実装。新たにエンタープライズ向けサポートサービスも提供 #twitter4j" data-count="none" data-via="yusukey" data-lang="ja">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    </center>
  </div>
<br>
</div>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-262260-4");
pageTracker._trackPageview();
} catch(err) {}</script>
<script>
if(submenu){
  var h = "";
  for(var i=0;i<submenu.length;i++){
    h = h + "<li><a href='" + currentPage + "#" + submenu[i]["name"] + "' onclick='return scrollGracefully(this.href)'>" + submenu[i]["title"] + "</a></li>";
  }
  if(document.getElementById(currentPage)){
   document.getElementById(currentPage).style.display = (-1 != currentPage.indexOf(currentPage)) ? "block" : "none";
   document.getElementById(currentPage).innerHTML = h;
  }
}
</script>
</body>
</html>