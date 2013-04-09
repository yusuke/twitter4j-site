<%@page pageEncoding="UTF-8" session="false" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - $[ja:変更履歴]$[en:Vesion History]$[ko:Vesion History]"
             description="Twitter4J $[ja:バージョンヒストリー]$[en:Vresion history]$[ko:Vesion History]"
             path="http://twitter4j.org/$[ja:ja]$[en:en]$[ko:ko]version-history.html">
<div class="history">
<a name="versionHistory"><h1>$[ja:変更履歴]$[en:Vesion History]$[ko:Vesion History]</h1></a>
<ul>
<!--
<li>2.0.</li>
$[ja:]$[en:]$[ko:]
-->


<li>Release Notes - Twitter4J - Version 2.0.6 <font color="red">new! 28/May/09</font></li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-157'>TFJ-157</a>] - getUserTimeline should be invocable from
        unauthenticated Twitter instances
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-158'>TFJ-158</a>] - Query.setGeoCode() is missing radius
        parameter
    </li>
</ul>

<h2> Task
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-155'>TFJ-155</a>] - several async methods need to be marked
        as deprecated
    </li>
</ul>


<li>Release Notes - Twitter4J - Version 2.0.5 24/May/09</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-150'>TFJ-150</a>] - REGRESSION : enableNotification() fails
        with TwitterException: 404:The URI requested is invalid or the resource requested, such as a user, does not
        exists.
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-151'>TFJ-151</a>] - several test cases fail on JDK1.4.2 with
        java.lang.NoSuchMethodError
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-153'>TFJ-153</a>] - OAuth rarely fails with &quot;Invalid /
        used nonce&quot;
    </li>
</ul>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-154'>TFJ-154</a>] - search() with old since_id throws
        TwitterException
    </li>
</ul>


<li>Release Notes - Twitter4J - Version 2.0.4 19/May/09</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-142'>TFJ-142</a>] - DocumentBuilder.parse is not thread safe
        : NullPointerException at AbstractDOMParser.startElement
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-145'>TFJ-145</a>] - twitter4j.http.Response shouldn't be
        Serializable
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-146'>TFJ-146</a>] - getUserDetail should be invocable from
        unauthenticated Twitter instances
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-149'>TFJ-149</a>] - OAuth fails with &quot;Invalid / expired
        Token&quot; after May 13, 2009
    </li>
</ul>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-147'>TFJ-147</a>] - retire ExtendedUser and UserWithStatus
    </li>
</ul>

<h2> New Feature
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-139'>TFJ-139</a>] - streaming API support beta
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-144'>TFJ-144</a>] - Add methods to retrieve blocking
        information
    </li>
</ul>

<h2> Task
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-143'>TFJ-143</a>] - Deprecation of following and notification
        elements
    </li>
</ul>

<li>Release Notes - Twitter4J - Version 2.0.3 10/May/09</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-135'>TFJ-135</a>] - search() causes :
        java.lang.IllegalArgumentException: URLDecoder: Illegal hex characters in escape (%) pattern - For input string:
        &quot;..&quot;
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-136'>TFJ-136</a>] - running Twitter4J on JDK1.4.x fails with
        java.lang.NoSuchMethodError: org.w3c.dom.Node.getTextContent()Ljava/lang/String;
    </li>
</ul>

<h2> Task
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-137'>TFJ-137</a>] - deprecate getDowntimeSchedule() since
        it's not supported by the Twitter API anymore
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-138'>TFJ-138</a>] - add @deprecated annotation to deprecated
        methods in TwitterAdapter
    </li>
</ul>


<li>Release Notes - Twitter4J - Version 2.0.2 08/May/09</li>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-131'>TFJ-131</a>] - Use gzip encoding to improve performance
        and network bandwidth utilization
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-132'>TFJ-132</a>] - handle http response codes correctly to
        reduce unnecessary retries
    </li>
</ul>

<h2> New Feature
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-120'>TFJ-120</a>] - include rate limit status in
        TwitterResponse
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-123'>TFJ-123</a>] - support trends methods
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-124'>TFJ-124</a>] - support update_profile method
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-133'>TFJ-133</a>] - need a way to shutdown async thread
        gracefully
    </li>
</ul>

<li>Release Notes - Twitter4J - Version 2.0.1 04/May/09</li>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-110'>TFJ-110</a>] - remove unnecessary synchronized modifier
        for better multi-thread performance
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-111'>TFJ-111</a>] - support page and max_id parameters with
        getUserTimeline()
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-112'>TFJ-112</a>] - introduce pagenation control class which
        replaces page, count, and since_id parameters
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-121'>TFJ-121</a>] - support follow parameter with create()
        method
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-122'>TFJ-122</a>] - need a way to get AccessToken in a
        stateless context where RequestToken instance is not available
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-126'>TFJ-126</a>] - dispatcher thread should be held
        statically
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-130'>TFJ-130</a>] - fix method name inconsistencies
    </li>
</ul>

<h2> New Feature
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-117'>TFJ-117</a>] - support statuses/mentions
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-125'>TFJ-125</a>] - introduce a System property that
        specifies number of dispatcher thread
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-128'>TFJ-128</a>] - support pagination on social graph
        methods
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-129'>TFJ-129</a>] - introduce async search method
    </li>
</ul>


<li>Release Notes - Twitter4J - Version 2.0.0 19/Apr/09</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-95'>TFJ-95</a>] - getFriends(String id) and getFriends(String
        id, int page) return authenticating user's friends' timeline instead
    </li>
</ul>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-103'>TFJ-103</a>] - User element is out of sync
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-104'>TFJ-104</a>] - UserWithStatus element is out of sync
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-105'>TFJ-105</a>] - show method should return ExtendedUser
        instead of Status
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-106'>TFJ-106</a>] - unescape HTML entities
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-108'>TFJ-108</a>] - deprecate QueryResult#getTotal()
    </li>
</ul>

<h2> New Feature
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-49'>TFJ-49</a>] - support update_profile_colors method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-75'>TFJ-75</a>] - support social graph methods
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-83'>TFJ-83</a>] - OAuth support
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-96'>TFJ-96</a>] - support since_id with getUserTimeline
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-97'>TFJ-97</a>] - support since_id with getDirectMessages and
    getSentDirectMessages
</li>

<li>Release Notes - Twitter4J - Version 1.1.8 07/Apr/09</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-91'>TFJ-91</a>] - null pointer exception getting user detail
        on users with no statuses
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-99'>TFJ-99</a>] - getAuthenticatedUser() fails with
        TwitterException if login is done with email address and password
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-101'>TFJ-101</a>] - getChildText() throws
        NullPointerException randomly
    </li>
</ul>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-86'>TFJ-86</a>] - send User-Agent header
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-89'>TFJ-89</a>] - System properties should win explicit
        setter methods
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-92'>TFJ-92</a>] - introduce System properties override userid
        and password
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-114'>TFJ-114</a>] - verifyCredentials() should return
        extended user information
    </li>
</ul>

<h2> New Feature
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-90'>TFJ-90</a>] - support since_id with getFriendsTimeline()
        and getReplies()
    </li>
</ul>

<h2> Task
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-84'>TFJ-84</a>] - add license term to each source file
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-85'>TFJ-85</a>] - add JDK1.4.2 support
    </li>
</ul>

<li>Release Notes - Twitter4J - Version 1.1.7 09/Mar/09</li>

<h2> New Feature
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-40'>TFJ-40</a>] - Search API support
</li>
<li>Release Notes - Twitter4J - Version 1.1.6 07/Mar/09</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-77'>TFJ-77</a>] - scripts in bin directory fail with
        NoClassDefFoundError
    </li>
</ul>

<h2> New Feature
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-78'>TFJ-78</a>] - ability to specify &quot;in_reply_to_status_id&quot;
        with update() method
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-80'>TFJ-80</a>] - ability to specify connection / read
        timeout
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-81'>TFJ-81</a>] - http proxy authentication support
    </li>
</ul>


<li>Release Notes - Twitter4J - Version 1.1.5 25/Feb/09</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-76'>TFJ-76</a>] - remove sun.misc.BASE64Encoder dependency
    </li>
</ul>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-74'>TFJ-74</a>] - twitter4j.http.Response ignores
        SAXException, makes it difficult to troubleshoot
    </li>
</ul>

<li>Release Notes - Twitter4J - Version 1.1.4 12/Jan/09</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-70'>TFJ-70</a>] - getting a protected user profile causes a
        NullPointerException
    </li>
</ul>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-69'>TFJ-69</a>] - some async methods are declared to throw
        TwitterException mistakenly
    </li>
</ul>

<h2> New Feature
</h2>
<ul>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-48'>TFJ-48</a>] - support update_delivery_device method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-49'>TFJ-49</a>] - support update_profile_colors method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-50'>TFJ-50</a>] - support update_profile_image method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-51'>TFJ-51</a>] - support update_profile_background_image method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-52'>TFJ-52</a>] - support exists method
</li>
<li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-53'>TFJ-53</a>] - support rate_limit_status method
</li>

<li>Release Notes - Twitter4J - Version 1.1.3 13/Dec/08</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-67'>TFJ-67</a>] - verifyCredentials() returns always false
        since 10/12/2008
    </li>
</ul>

<h2> New Feature
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-33'>TFJ-33</a>] - ability to get the authenticated user
    </li>
</ul>

<h2> Task
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-65'>TFJ-65</a>] - methods don't have to be final
    </li>
</ul>


<li>Release Notes - Twitter4J - Version 1.1.2 02/Dec/08</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-61'>TFJ-61</a>] - AsyncTwitter#createFavoriteAsync(),
        destoryStatusAsync(), destroyFavoriteAsync() should take long instead of int
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-64'>TFJ-64</a>] - AsyncTwitter#show(long) fails with
        ClassCastException
    </li>
</ul>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-63'>TFJ-63</a>] - typo: detroy -&gt; destory
    </li>
</ul>

<li>Release Notes - Twitter4J - Version 1.1.1 22/Nov/08</li>

<h2> Bug
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-54'>TFJ-54</a>] - Show method should take long instead of int
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-55'>TFJ-55</a>] - Show method shouldn't require userid and
        password
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-56'>TFJ-56</a>] - TwitterResponse from AsyncTwitter is not
        Serializable
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-57'>TFJ-57</a>] - Date is encoded twice, and therefore &quot;since&quot;
        doesn't work
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-60'>TFJ-60</a>] - hashCode and equals are not properly
        implemented
    </li>
</ul>

<h2> Improvement
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-47'>TFJ-47</a>] - implement toString()
    </li>
</ul>

<li>$[ja:バージョン ]$[en:Version ]$[ko:버전]1.1.0 02/Nov/08</li>

<h2> $[ja:修正されたバグ]$[en:Resolved Bugs]$[ko:수정된 버그]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-44'>TFJ-44</a>] - #document: null] is unnecessarily printed
        to the System.out
    </li>
</ul>

<h2> $[ja:改善]$[en:Improvement]$[ko:개선]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-31'>TFJ-31</a>] - dereference DOM objects to reduce memory
        footprint
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-34'>TFJ-34</a>] - Status#getCreatedAt(),
        UserWithStatus.getCreatedAt() and DirectMessage.getCreatedAt() should return java.util.Date
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-41'>TFJ-41</a>] - Status.getId(),
        UserWithStatus.getStatusId() should return long instead of int
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-43'>TFJ-43</a>] - remove unsupported methods
    </li>
</ul>

<h2> $[ja:新機能]$[en:New Feature]$[ko:신기능]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-45'>TFJ-45</a>] - getFollowers() should accept id and/or page
        parameter
    </li>
</ul>


<li>$[ja:バージョン ]$[en:Version ]$[ko:버전 ]1.0.6 29/Oct/08</li>


<h2> $[ja:修正されたバグ]$[en:Resolved Bugs]$[ko:수정된 버그]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-38'>TFJ-38</a>] - $[ja:getDirectMessage(int since) が 500
        Internal Server Error で失敗する] $[en:getDirectMessage(int since) fails with 500 Internal Server Error]$[ko:getDirectMessage(int since) 가 500 Internal Server Error 로 실패]
    </li>
</ul>

<h2> $[ja:改善]$[en:Improvement]$[ko:개선]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-37'>TFJ-37</a>] - $[ja:Unexpected root node name:nilclasses.
        Expected:nil-classes] $[en:Unexpected root node name:nilclasses. Expected:nil-classes] $[ko:Unexpected root node name:nilclasses. Expected:nil-classes]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-42'>TFJ-42</a>] - maximum number of count is now 200
    </li>
</ul>


<li>$[ja:バージョン ]$[en:Version ]$[ko:버전 ]1.0.5 16/Sep/08</li>

<h2> $[ja:修正されたバグ]$[en:Resolved Bugs]$[ko:수정된 버그]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-36'>TFJ-36</a>] - $[ja:いくつかのメソッドが 400 コードで失敗した]
        $[en:create/destroyFavorite, follow, leave, block, unblock fail with HTTP 400 code]
        $[ko:몇몇 메서드가 400 코드로 실패]
    </li>
</ul>

<h2> $[ja:新機能]$[en:New Feature]$[ko:신기능]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-35'>TFJ-35</a>] - $[ja:status を削除するメソッドを追加] $[en:add destory
        method for status]$[ko:status 를 삭제하는 메서드를 추가]
    </li>
</ul>


<li>$[ja:バージョン ]$[en:Version ]$[ko:버전 ]1.0.4 01/Jun/08</li>

<h2> $[ja:改善]$[en:Improvement]$[ko:개선]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-22'>TFJ-22</a>] - $[ja:pom.xml が source jar
        を生成しない]$[en:pom.xml does not produce source jar file]$[ko:pom.xml 이 source jar 를 생성하지 않음]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-27'>TFJ-27</a>] - $[ja:&quot;source&quot;, &quot;truncated&quot;,
        &quot;in_reply_to_status_id&quot;, &quot;in_reply_to_user_id&quot;, &quot;favorited&quot; を Status に, &quot;followers_count&quot;
        を User に追加]$[en:add &quot;source&quot;, &quot;truncated&quot;, &quot;in_reply_to_status_id&quot;, &quot;in_reply_to_user_id&quot;,
        &quot;favorited&quot; to Status, &quot;followers_count&quot; to User]$[ko:&quot;source&quot;, &quot;truncated&quot;,
        &quot;in_reply_to_status_id&quot;, &quot;in_reply_to_user_id&quot;, &quot;favorited&quot; 를 Status 에, &quot;followers_count&quot;
        를 User 에 추가]
    </li>
</ul>

<h2> $[ja:新機能]$[en:New Feature]$[ko:신기능]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-21'>TFJ-21</a>] - $[ja:POST メソッドを強制する機能]$[en:ability to force
        using POST method]$[ko:POST 메서드를 강제하는 기능]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-24'>TFJ-24</a>] - $[ja:2008/4/29に導入された新APIのサポート]$[en:support
        new APIs introduced on April 29th, 2008]$[ko:2008/4/29 에 도입된 신 API의 서포트]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-25'>TFJ-25</a>] - $[ja:ユーザIDとパスワードを変更する機能]$[en:ability to
        change user id and password]$[ko:사용자ID와 패스워드를 변경하는 기능]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-26'>TFJ-26</a>] - $[ja:リクエスト、レスポンスをダンプする機能]$[en:ability to
        dump request and response]$[ko:request 와 response 를 덤프하는 기능]
    </li>
</ul>

<li>$[ja:バージョン ]$[en:Version ]$[ko:버전 ]1.0.3 19/Jan/08</li>

<h2> $[ja:新機能]$[en:New Feature]$[ko:신기능]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-16'>TFJ-16</a>] - $[ja:follow / leave メソッドのサポート] $[en:support
        for follow / leave methods]$[ko:follow / leave 메서드의 서포트]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-17'>TFJ-17</a>] -
        $[ja:getFriends()メソッドでページ番号を指定できるように]$[en:ability to specify &quot;page&quot; to getFriends() method]$[ko:getFriends() 메서드에서 페이지 번호를 지정가능 하도록]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-18'>TFJ-18</a>] - $[ja:アカウントメソッドのサポート] $[en:support for
        Account Methods]$[ko:Account Methods의 서포트]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-19'>TFJ-19</a>] - $[ja:お気に入りメソッドのサポート]$[en:support for
        favorite methods]$[ko:즐겨찾기 메서드의 서포트]
    </li>
</ul>


<li>$[ja:バージョン ]$[en:Version ]$[ko:버전 ]1.0.2 16/Jul/07</li>
<h2> $[ja:修正されたバグ]$[en:Resolved Bugs]$[ko:수정된 버그]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-13'>TFJ-13</a>] - $[ja:twitter4j jar の署名に失敗する]$[en: unable to
        sign twitter4j jar]$[ko:twitter4j jar 의 서명에 실패]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-14'>TFJ-14</a>] - $[ja:getPublicTimeline(sinceId)
        の引数は整数であるべき]$[en:getPublicTimeline(sinceId) should take int]$[ko:getPublicTimeline(sinceId)의 인수는 정수여야 함]
    </li>
</ul>

<h2> $[ja:改善]$[en:Improvement]$[ko:개선]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-9'>TFJ-9</a>] - $[ja:Commons-Codec への依存の除去]$[en:remove
        Commons-Codec dependency]$[ko:Commons-Codec 에의 의존을 제거]
    </li>
</ul>

<h2> $[ja:新機能]$[en:New Feature]$[ko:신기능]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-8'>TFJ-8</a>] - $[ja:&quot;source&quot;
        パラメータとリクエストヘッダを設定できるように]$[en:ability to set &quot;source&quot; parameter and request headers]$[ko:&quot;source&quot;
        파라메터 와 request header 를 설정 가능하도록]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-10'>TFJ-10</a>] - $[ja:ダイレクトメッセージの&quot;sender&quot; と &quot;recipient&quot;
        要素のサポート]$[en:support &quot;sender&quot; and &quot;recipient&quot; elements in direct messages]$[ko:다이렉트 메세지 의 &quot;sender&quot; 와 &quot;recipient&quot;
        요소의 서포트]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-11'>TFJ-11</a>] - $[ja:&quot;sent&quot; APIのサポート]$[en:support
        for &quot;sent&quot; API]$[ko:&quot;sent&quot; API 의 서포트]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-12'>TFJ-12</a>] - $[ja:ページングのサポート]$[en:support for pagination
        parameter]$[ko:pagination 서포트]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-15'>TFJ-15</a>] - $[ja:getDirectMessages() に sinse_id
        を渡せるように]$[en:ability to pass since_id to getDirectMessges()]$[ko:getDirectMessages() 에 sinse_id
        를 넘겨줄수 있도록]
    </li>
</ul>
<li>$[ja:バージョン ]$[en:Version ]$[ko:버전 ]1.0.1 25/Jun/07</li>
<h2> $[ja:修正されたバグ]$[en:Resolved Bugs]$[ko:수정된 버그]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-2'>TFJ-2</a>] - $[ja:Twitter#getUserDetail() で
        NullPointerException が発生する]$[en:Twitter#getUserDetail() throws NullPointerException]$[ko:Twitter#getUserDetail() 에서 NullPointerException 이 발생]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-3'>TFJ-3</a>] - $[ja:Twitter#getFriends()
        で取得したUserインスタンスのうちいくつかのメソッドで NullPointerException が発生する]$[en:some methods of User instance retrieved from
        Twitter#getFriends() throw NullPointerException]
$[ko:Twitter#getFriends() 에서 취득한 User 인스턴스 중 몇몇 메서드에서 NullPointerException 이 발생]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-4'>TFJ-4</a>] - $[ja:getDirectMessages()
        で取得したダイレクトメッセージの件数が０件だと TwitterException が発生する]$[en]getDirectMessages() throws TwitterException when response
        contains no messages]
$[ko:getDirectMessages()
        에서 취득한 다이렉트 메세지의 건수가 0건이면 TwitterException 이 발생]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-5'>TFJ-5</a>] - $[ja:Twitter#getReplies() で TwitterException
        が発生する]$[en:Twitter#getReplies() throws TwitterException]$[ko:Twitter#getReplies() 에서 TwitterException 이 발생]
    </li>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-6'>TFJ-6</a>] - $[ja:Twitterサービスのメンテナンス時に
        NullPointerException が発生する]$[en:NullPointerException throwed during Twitter service maintenance]$[ko:Twitter 서비스의 점검시에 
        NullPointerException 이 발생]
    </li>
</ul>

<h2> $[ja:新機能]$[en:New Feature]$[ko:신기능]
</h2>
<ul>
    <li>[<a href='http://yusuke.homeip.net/jira/browse/TFJ-1'>TFJ-1</a>] - $[ja:ダイレクトメッセージ削除APIのサポート]$[en:need support
        for destroying directmessage]$[ko:다이렉트 메세지삭제 API의 서포트]
    </li>
</ul>

<li>$[ja:バージョン ]$[en:Version ]$[ko:버전 ]1.0.0 09/Jun/07</li>
$[ja:初期バージョンリリース]$[en:Released Initial Version]$[ko:초기버전 릴리즈]
<!--a name="todo"><h2>$[ja:Todo]$[en:Todo]$[ko:Todo]</h2></a>
<ul>
<li>$[ja:もうすこしキレイなロゴ]$[en:fancy logo]$[ko:fancy logo]</li>
</ul-->
</ul>
</div>
</tag:skelton>
