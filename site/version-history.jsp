<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - $[ja:変更履歴]$[en:Vesion History]">
<div class="history">
    <a name="versionHistory"><h1>$[ja:変更履歴]$[en:Vesion History]</h1></a>
    <ul>
<!--
<li>2.0.</li>
$[ja:]$[en:]
-->
<li>Release Notes - Twitter4J - Version 2.0.0 <font color="red">new! 4/19/2009</font></li>

<h2>        Bug
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-95'>TFJ-95</a>] -         getFriends(String id) and getFriends(String id, int page) return authenticating user's friends' timeline instead
</li>
</ul>

<h2>        Improvement
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-103'>TFJ-103</a>] -         User element is out of sync
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-104'>TFJ-104</a>] -         UserWithStatus element is out of sync
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-105'>TFJ-105</a>] -         show method should return ExtendedUser instead of Status
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-106'>TFJ-106</a>] -         unescape HTML entities
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-108'>TFJ-108</a>] -         deprecate QueryResult#getTotal()
</li>
</ul>

<h2>        New Feature
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-49'>TFJ-49</a>] -         support update_profile_colors method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-75'>TFJ-75</a>] -         support social graph methods
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-83'>TFJ-83</a>] -         OAuth support
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-96'>TFJ-96</a>] -         support since_id with getUserTimeline
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-97'>TFJ-97</a>] -         support since_id with getDirectMessages and getSentDirectMessages
</li>

        <li>Release Notes - Twitter4J - Version 1.1.8</li>
    
<h2>        Bug
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-91'>TFJ-91</a>] -         null pointer exception getting user detail on users with no statuses
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-99'>TFJ-99</a>] -         getAuthenticatedUser() fails with TwitterException if login is done with email address and password
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-101'>TFJ-101</a>] -         getChildText() throws NullPointerException randomly 
</li>
</ul>
    
<h2>        Improvement
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-86'>TFJ-86</a>] -         send User-Agent header
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-89'>TFJ-89</a>] -         System properties should win explicit setter methods
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-92'>TFJ-92</a>] -         introduce System properties override userid and password
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-114'>TFJ-114</a>] -         verifyCredentials() should return extended user information
</li>
</ul>

<h2>        New Feature
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-90'>TFJ-90</a>] -         support since_id with getFriendsTimeline() and getReplies()
</li>
</ul>
    
<h2>        Task
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-84'>TFJ-84</a>] -         add license term to each source file
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-85'>TFJ-85</a>] -         add JDK1.4.2 support
</li>
</ul>

        <li>Release Notes - Twitter4J - Version 1.1.7</li>
            
<h2>        New Feature
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-40'>TFJ-40</a>] -         Search API support
</li>
        <li>Release Notes - Twitter4J - Version 1.1.6</li>
    
<h2>        Bug
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-77'>TFJ-77</a>] -         scripts in bin directory fail with NoClassDefFoundError 
</li>
</ul>
        
<h2>        New Feature
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-78'>TFJ-78</a>] -         ability to specify &quot;in_reply_to_status_id&quot; with update() method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-80'>TFJ-80</a>] -         ability to specify connection / read timeout
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-81'>TFJ-81</a>] -         http proxy authentication support
</li>
</ul>


        <li>Release Notes - Twitter4J - Version 1.1.5</li>
    
<h2>        Bug
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-76'>TFJ-76</a>] -         remove sun.misc.BASE64Encoder dependency
</li>
</ul>
    
<h2>        Improvement
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-74'>TFJ-74</a>] -         twitter4j.http.Response ignores SAXException, makes it difficult to troubleshoot
</li>
</ul>
    
        <li>Release Notes - Twitter4J - Version 1.1.4</li>
    
<h2>        Bug
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-70'>TFJ-70</a>] -         getting a protected user profile causes a NullPointerException
</li>
</ul>
    
<h2>        Improvement
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-69'>TFJ-69</a>] -         some async methods are declared to throw TwitterException mistakenly
</li>
</ul>
    
<h2>        New Feature
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-48'>TFJ-48</a>] -         support update_delivery_device method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-49'>TFJ-49</a>] -         support update_profile_colors method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-50'>TFJ-50</a>] -         support update_profile_image method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-51'>TFJ-51</a>] -         support update_profile_background_image method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-52'>TFJ-52</a>] -         support exists method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-53'>TFJ-53</a>] -         support rate_limit_status method
</li>

        <li>Release Notes - Twitter4J - Version 1.1.3</li>
    
<h2>        Bug
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-67'>TFJ-67</a>] -         verifyCredentials() returns always false since 10/12/2008
</li>
</ul>
        
<h2>        New Feature
	</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-33'>TFJ-33</a>] -         ability to get the authenticated user
</li>
</ul>
    
<h2>        Task
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-65'>TFJ-65</a>] -         methods don't have to be final
</li>
</ul>


        <li>Release Notes - Twitter4J - Version 1.1.2</li>
    
<h2>        Bug
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-61'>TFJ-61</a>] -         AsyncTwitter#createFavoriteAsync(), destoryStatusAsync(), destroyFavoriteAsync() should take long instead of int
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-64'>TFJ-64</a>] -         AsyncTwitter#show(long) fails with ClassCastException
</li>
</ul>
    
<h2>        Improvement
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-63'>TFJ-63</a>] -         typo: detroy -&gt; destory
</li>
</ul>

       <li>Release Notes - Twitter4J - Version 1.1.1 </li>
    
<h2>        Bug
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-54'>TFJ-54</a>] -         Show method should take long instead of int
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-55'>TFJ-55</a>] -         Show method shouldn't require userid and password
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-56'>TFJ-56</a>] -         TwitterResponse from AsyncTwitter is not Serializable
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-57'>TFJ-57</a>] -         Date is encoded twice, and therefore &quot;since&quot; doesn't work
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-60'>TFJ-60</a>] -         hashCode and equals are not properly implemented
</li>
</ul>
    
<h2>        Improvement
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-47'>TFJ-47</a>] -         implement toString()
</li>
</ul>
        
        <li>$[ja:バージョン ]$[en:Version ]1.1.0</li>
    
<h2>        $[ja:修正されたバグ]$[en:Resolved Bugs]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-44'>TFJ-44</a>] -         #document: null] is unnecessarily printed to the System.out
</li>
</ul>
    
<h2>       $[ja:改善]$[en:Improvement]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-31'>TFJ-31</a>] -         dereference DOM objects to reduce memory footprint
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-34'>TFJ-34</a>] -         Status#getCreatedAt(), UserWithStatus.getCreatedAt() and DirectMessage.getCreatedAt() should return java.util.Date
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-41'>TFJ-41</a>] -         Status.getId(), UserWithStatus.getStatusId() should return long instead of int
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-43'>TFJ-43</a>] -         remove unsupported methods
</li>
</ul>
    
<h2>        $[ja:新機能]$[en:New Feature]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-45'>TFJ-45</a>] -         getFollowers() should accept id and/or page parameter 
</li>
</ul>
    

        <li>$[ja:バージョン ]$[en:Version ]1.0.6</li>


<h2>        $[ja:修正されたバグ]$[en:Resolved Bugs]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-38'>TFJ-38</a>] -  $[ja:getDirectMessage(int since) が 500 Internal Server Error で失敗する] $[en:getDirectMessage(int since) fails with 500 Internal Server Error]
</li>
</ul>
    
<h2>       $[ja:改善]$[en:Improvement]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-37'>TFJ-37</a>] -   $[ja:Unexpected root node name:nilclasses. Expected:nil-classes] $[en:Unexpected root node name:nilclasses. Expected:nil-classes]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-42'>TFJ-42</a>] -   maximum number of count is now 200
</li>
</ul>



        <li>$[ja:バージョン ]$[en:Version ]1.0.5

<h2>        $[ja:修正されたバグ]$[en:Resolved Bugs]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-36'>TFJ-36</a>] -  $[ja:いくつかのメソッドが 400 コードで失敗した] $[en:create/destroyFavorite, follow, leave, block, unblock fail with HTTP 400 code]
</li>
</ul>
    
<h2>       $[ja:新機能]$[en:New Feature]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-35'>TFJ-35</a>] -   $[ja:status を削除するメソッドを追加] $[en:add destory method for status]
</li>
</ul>


    



        <li>$[ja:バージョン ]$[en:Version ]1.0.4</li>

<h2>       $[ja:改善]$[en:Improvement]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-22'>TFJ-22</a>] -  $[ja:pom.xml が source jar を生成しない]$[en:pom.xml does not produce source jar file]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-27'>TFJ-27</a>] -  $[ja:&quot;source&quot;, &quot;truncated&quot;, &quot;in_reply_to_status_id&quot;, &quot;in_reply_to_user_id&quot;, &quot;favorited&quot; を Status に, &quot;followers_count&quot; を User に追加]$[en:add &quot;source&quot;, &quot;truncated&quot;, &quot;in_reply_to_status_id&quot;, &quot;in_reply_to_user_id&quot;, &quot;favorited&quot; to Status, &quot;followers_count&quot; to User]
</li>
</ul>
    
<h2>       $[ja:新機能]$[en:New Feature]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-21'>TFJ-21</a>] -   $[ja:POST メソッドを強制する機能]$[en:ability to force using POST method]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-24'>TFJ-24</a>] -  $[ja:2008/4/29に導入された新APIのサポート]$[en:support new APIs introduced on April 29th, 2008]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-25'>TFJ-25</a>] -  $[ja:ユーザIDとパスワードを変更する機能]$[en:ability to change user id and password]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-26'>TFJ-26</a>] -  $[ja:リクエスト、レスポンスをダンプする機能]$[en:ability to dump request and response]
</li>
</ul>

        <li>$[ja:バージョン ]$[en:Version ]1.0.3</li>

<h2>        $[ja:新機能]$[en:New Feature]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-16'>TFJ-16</a>] -  $[ja:follow / leave メソッドのサポート] $[en:support for follow / leave methods]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-17'>TFJ-17</a>] -  $[ja:getFriends()メソッドでページ番号を指定できるように]$[en:ability to specify &quot;page&quot; to getFriends() method]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-18'>TFJ-18</a>] -  $[ja:アカウントメソッドのサポート] $[en:support for Account Methods]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-19'>TFJ-19</a>] -  $[ja:お気に入りメソッドのサポート]$[en:support for favorite methods]
</li>
</ul>


        <li>$[ja:バージョン ]$[en:Version ]1.0.2</li>
   <h2>        $[ja:修正されたバグ]$[en:Resolved Bugs]
   </h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-13'>TFJ-13</a>] -  $[ja:twitter4j jar の署名に失敗する]$[en: unable to sign twitter4j jar]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-14'>TFJ-14</a>] - $[ja:getPublicTimeline(sinceId) の引数は整数であるべき]$[en:getPublicTimeline(sinceId) should take int]
</li>
</ul>

<h2>       $[ja:改善]$[en:Improvement]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-9'>TFJ-9</a>] -  $[ja:Commons-Codec への依存の除去]$[en:remove Commons-Codec dependency]
</li>
</ul>

<h2>       $[ja:新機能]$[en:New Feature]
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-8'>TFJ-8</a>] - $[ja:&quot;source&quot; パラメータとリクエストヘッダを設定できるように]$[en:ability to set &quot;source&quot; parameter and request headers]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-10'>TFJ-10</a>] - $[ja:ダイレクトメッセージの&quot;sender&quot; と &quot;recipient&quot; 要素のサポート]$[en:support &quot;sender&quot; and &quot;recipient&quot; elements in direct messages]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-11'>TFJ-11</a>] - $[ja:&quot;sent&quot; APIのサポート]$[en:support for &quot;sent&quot; API]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-12'>TFJ-12</a>] - $[ja:ページングのサポート]$[en:support for pagination parameter]
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-15'>TFJ-15</a>] - $[ja:getDirectMessages() に sinse_id を渡せるように]$[en:ability to pass since_id to getDirectMessges()]
</li>
</ul>
 <li>$[ja:バージョン ]$[en:Version ]1.0.1 </li>
    <h2>        $[ja:修正されたバグ]$[en:Resolved Bugs]
    </h2>
    <ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-2'>TFJ-2</a>] -         $[ja:Twitter#getUserDetail() で NullPointerException が発生する]$[en:Twitter#getUserDetail() throws NullPointerException]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-3'>TFJ-3</a>] -         $[ja:Twitter#getFriends() で取得したUserインスタンスのうちいくつかのメソッドで NullPointerException が発生する]$[en:some methods of User instance retrieved from Twitter#getFriends() throw NullPointerException]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-4'>TFJ-4</a>] -         $[ja:getDirectMessages() で取得したダイレクトメッセージの件数が０件だと TwitterException が発生する]$[en]getDirectMessages() throws TwitterException when response contains no messages]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-5'>TFJ-5</a>] -         $[ja:Twitter#getReplies() で TwitterException が発生する]$[en:Twitter#getReplies() throws TwitterException]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-6'>TFJ-6</a>] -         $[ja:Twitterサービスのメンテナンス時に NullPointerException が発生する]$[en:NullPointerException throwed during Twitter service maintenance]
    </li>
    </ul>

    <h2>       $[ja:新機能]$[en:New Feature]
    </h2>
    <ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-1'>TFJ-1</a>] -         $[ja:ダイレクトメッセージ削除APIのサポート]$[en:need support for destroying directmessage]
    </li>
    </ul>

<li>$[ja:バージョン ]$[en:Version ]1.0.0</li>
$[ja:初期バージョンリリース]$[en:Released Initial Version]
    <!--a name="todo"><h2>$[ja:Todo]$[en:Todo]</h2></a>
 <ul>
   <li>$[ja:もうすこしキレイなロゴ]$[en:fancy logo]</li>
 </ul-->
</ul>
</div>
</tag:skelton>