<div class="left">
	<div style="text-align:center">$[ja:<a id="lang-link" href="../en/index.html">English</a> | Japanese]$[en:English | <a id="lang-link" href="../ja/index.html">Japanese</a>]</div>
<script>
var currentPage = location.href.substring(location.href.lastIndexOf("/") + 1);
$[ja:document.getElementById("lang-link").href="../en/"+ currentPage;]
$[en:document.getElementById("lang-link").href="../ja/"+ currentPage;]
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
<li><a href="index.html#introduction" onclick="return scrollGracefully(this.href)">$[ja:トップ]$[en:Main]</a></li>
 <ol style="display:none" id="index.html"></ol>
<li><a href="code-examples.html">$[ja:コード例]$[en:Code Examples]</a></li>
 <ol style="display:none" id="code-examples.html"></ol>
<li><a href="./javadoc.html">JavaDoc</a></li>
 <ol style="display:none" id="javadoc.html"></ol>
<li><a href="api-support.html">$[ja:サポートしているAPI]$[en:API Support matrix]</a></li>
 <ol style="display:none" id="api-support.html"></ol>
<li><a href="versions.html">$[ja:バージョン]$[en:Versions]</a></li>
 <ol style="display:none" id="versions.html"></ol>
<li><a href="faq.html"">$[ja:よくある質問]$[en:FAQ]</a></li>
 <ol style="display:none" id="faq.html"></ol>
<li><a href="/jira/browse/TFJ#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel">$[ja:変更履歴]$[en:Change Log]</a></li>
<li><a href="index.html#donation" onclick="return scrollGracefully(this.href)">$[ja:寄付する]$[en:Donate]</a></li>
<li><a href="./powered-by.html">Powered By Twitter4J</a></li>
 <ol style="display:none" id="powered-by.html"></ol>
</ul>
<center>
<a href="http://www.twitter.com/t4j_news"><img src="http://twitter-badges.s3.amazonaws.com/follow_bird-a.png" alt="Follow t4j_news on Twitter"/></a><br><br>
<include>adsense200x200.html</include>
</center>
<!--script src="http://images.del.icio.us/static/js/blogbadge.js"></script>
<script type="text/javascript">
//digg_url = document.location.href;
digg_url = "http://yusuke.homeip.net/komuso/ja/";
digg_bgcolor = '#ff9900';
digg_skin = 'compact';
</script>
<script src="http://digg.com/tools/diggthis.js" type="text/javascript"></script-->
</div>
