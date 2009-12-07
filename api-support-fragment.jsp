﻿<h3><a name="Search API Methods">Search API Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-Search-API-Method%3A-search">search</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#search(twitter4j.Query)">search()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Query.html">✔ pcs(via Query)</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-Search-API-Method%3A-trends">trends</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getTrends()">getTrends()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-Search-API-Method%3A-trends-current">trends/current</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getCurrentTrends()">getCurrentTrends()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-Search-API-Method%3A-trends-daily">trends/daily</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getDailyTrends()">getDailyTrends()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-Search-API-Method%3A-trends-weekly">trends/weekly</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getWeeklyTrends()">getWeeklyTrends()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Timeline Methods">Timeline Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-public_timeline">statuses/public_timeline</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getPublicTimeline()">getPublicTimeline()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-home_timeline">statuses/home_timeline</a></td><td><a href="http://yusuke.homeip.net/jira/browse/TFJ-195">not yet supported(TFJ-195)</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getHomeTimeline(twitter4j.Paging)">✔ smcp</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-friends_timeline">statuses/friends_timeline</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFriendsTimeline()">getFriendsTimeline()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFriendsTimeline(twitter4j.Paging)">✔ smcp</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-user_timeline">statuses/user_timeline</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getUserTimeline()">getUserTimeline()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getUserTimeline(twitter4j.Paging)">✔ smcp</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-mentions">statuses/mentions</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getMentions()">getMentions()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getMentions(twitter4j.Paging)">✔ smcp</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-retweeted_by_me">statuses/retweeted_by_me</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getRetweetedByMe()">getRetweetedByMe()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getRetweetedByMe(twitter4j.Paging)">✔ smcp</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-retweeted_to_me">statuses/retweeted_to_me</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getRetweetedToMe()">getRetweetedToMe()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getRetweetedToMe(twitter4j.Paging)">✔ smcp</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-retweets_of_me">statuses/retweets_of_me</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getRetweetsOfMe()">getRetweetsOfMe()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getRetweetsOfMe(twitter4j.Paging)">✔ smcp</a></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Status Methods">Status Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses%C2%A0show">statuses/show</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#showStatus(long)">showStatus()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses%C2%A0update">statuses/update</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#updateStatus(java.lang.String)">updateStatus()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses%C2%A0destroy">statuses/destroy</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#destroyStatus(long)">destroyStatus()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-retweet">statuses/retweet</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#retweetStatus(long)">retweetStatus()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses-retweets">statuses/retweets</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getRetweets()">getRetweets()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="User Methods">User Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-users%C2%A0show">users/show</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#showUser(java.lang.String)">showUser()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses%C2%A0friends">statuses/friends</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFriendsStatuses()">getFriendsStatuses()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFriendsStatuses(java.lang.String,%20twitter4j.Paging)">✔ p</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-statuses%C2%A0followers">statuses/followers</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFollowersStatuses()">getFollowersStatuses()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFollowersStatuses(twitter4j.Paging)">✔ p</a></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="List Methods">List Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-POST-lists">1/user/lists (create)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-POST-lists-id">1/user/lists/id (update)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-lists">1/user/lists (index)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-list-id">1/user/lists/id (show)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-DELETE-list-id">1/user/lists/id (delete)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-list-statuses">1/user/lists/list_id/statuses</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-list-memberships">1/user/lists/memberships</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-list-subscriptions">1/user/lists/subscriptions</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="List Members Methods">List Members Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-list-members">1/user/list_id/members (GET)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-POST-list-members">1/user/list_id/members (POST)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-DELETE-list-members">1/user/list_id/members (DELETE)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-list-members-id">1/user/list_id/members/id (GET list id)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="List Subscribers Methods">List Subscribers Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-list-subscribers">1/user/list_id/subscribers (GET)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-POST-list-subscribers">1/user/list_id/subscribers (POST)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-DELETE-list-subscribers">1/user/list_id/members (DELETE)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-GET-list-subscribers-id">1/user/list_id/subscribers/:id (GET list subscribers id)</a></td><td><a href="">working on(TFJ-214)</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Direct Message Methods ">Direct Message Methods </a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-direct_messages">direct_messages</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getDirectMessages()">getDirectMessages()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getDirectMessages(twitter4j.Paging)">✔ smcp</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-direct_messages%C2%A0sent">direct_messages/sent</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getSentDirectMessages()">getSentDirectMessages()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getSentDirectMessages(twitter4j.Paging)">✔ smp</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-direct_messages%C2%A0new">direct_messages/new</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#sendDirectMessage(java.lang.String,%20java.lang.String)">sendDirectMessage()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-direct_messages%C2%A0destroy">direct_messages/destroy</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#deleteDirectMessage(int)">deleteDirectMessage()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Friendship Methods">Friendship Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-friendships%C2%A0create">friendships/create</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#createFriendship(java.lang.String)">createFriendship()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-friendships%C2%A0destroy">friendships/destroy</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#destroyFriendship(java.lang.String)">destroyFriendship()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-friendships-exists">friendships/exists</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#existsFriendship(java.lang.String,%20java.lang.String)">existsFriendship()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Social Graph Methods">Social Graph Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-friends%C2%A0ids">friends/ids</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFriendsIDs()">getFriendsIDs()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFriendsIDs(twitter4j.Paging)">✔p</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-followers%C2%A0ids">followers/ids</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFollowersIDs()">getFollowersIDs()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFollowersIDs(twitter4j.Paging)">✔p</a></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Account Methods">Account Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-account%C2%A0verify_credentials">account/verify_credentials</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#verifyCredentials()">verifyCredentials()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-account%C2%A0rate_limit_status">account/rate_limit_status</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#rateLimitStatus()">rateLimitStatus()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-account%C2%A0end_session">account/end_session</a></td><td><a href="http://groups.google.com/group/twitter4j/browse_thread/thread/5957722d596e269c/c2956d43a46b31b5?lnk=gst&q=stateless#c2956d43a46b31b5">not supported</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-account%C2%A0update_delivery_device">account/update_delivery_device</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#updateDeliverlyDevice(twitter4j.Twitter.Device)">updateDeliverlyDevice()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-account%C2%A0update_profile_colors">account/update_profile_colors</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#updateProfileColors(java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String)">updateProfileColors()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-account%C2%A0update_profile_image">account/update_profile_image</a></td><td><a href="http://yusuke.homeip.net/jira/browse/TFJ-50">now working on(TFJ-50)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-account%C2%A0update_profile_background_image">account/update_profile_background_image</a></td><td><a href="http://yusuke.homeip.net/jira/browse/TFJ-51">now working on(TFJ-51)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-account%C2%A0update_profile">account/update_profile</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#updateProfile(java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String)">updateProfile()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Favorite Methods">Favorite Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-favorites">favorites</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFavorites()">getFavorites()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getFavorites(int)">✔p</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-favorites%C2%A0create">favorites/create</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#createFavorite(long)">createFavorite() </a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-favorites%C2%A0destroy">favorites/destroy</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#destroyFavorite(long)">destroyFavorite()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Notification Methods">Notification Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-notifications%C2%A0follow">notifications/follow</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#enableNotification(java.lang.String)">enableNotification()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-notifications%C2%A0leave">notifications/leave</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#disableNotification(java.lang.String)">disableNotification()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Block Methods">Block Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-blocks%C2%A0create">blocks/create</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#createBlock(java.lang.String)">createBlock()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-blocks%C2%A0destroy">blocks/destroy</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#destroyBlock(java.lang.String)">destroyBlock()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter+REST+API+Method%3A-blocks-exists">blocks/exists</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#existsBlock(java.lang.String)">existsBlock()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter+REST+API+Method%3A-blocks-blocking">blocks/blocking</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getBlockingUsers()">getBlockingUsers()</a></td><td class="pagination"><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getBlockingUsers(int)">✔p</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-blocks-blocking-ids">blocks/ids</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getBlockingIDs()">getBlockingUsersIDs()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Spam Reporting Methods">Spam Reporting Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-report_spam">report_spam</a></td><td><a href="http://yusuke.homeip.net/jira/browse/TFJ-223">not yet supported(TFJ-223)</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Saved Searches Methods">Saved Searches Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-saved_searches">saves_searches</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#getSavedSearches()">getSavedSearches()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-saved_searches-show">saves_searches/show</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#showSavedSearch(int)">showSavedSearch()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-saved_searches-create">saves_searches/create</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#createSavedSearch(java.lang.String)">createSavedSearch()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-saved_searches-destroy">saves_searches/destroy</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#destroySavedSearch(int)">destroySavedSearch()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Local Trends Methods">Local Trends Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-trends-available">1/trends/available</a></td><td><a href="">not yet supported(TFJ-233)</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-trends-location">1/trends/woeid</a></td><td><a href="">not yet supported(TFJ-233)</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Help Methods">Help Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Twitter-REST-API-Method%3A-help%C2%A0test">help/test</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/Twitter.html#test()">test()</a></td><td class="pagination"></td></tr>
</table>* p: page, c: count, s: since_id, m: max_id<h3><a name="Streaming API Methods">Streaming API Methods</a></h3><table class="api-matrix"><tr><th class="method-path">Twitter API Path</th><th class="t4jmethod">Twitter4J Method</th><th class="paging-support">Paging(*)</th></tr>
<tr><td><a href="http://apiwiki.twitter.com/Streaming-API-Documentation#firehose">firehose</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/TwitterStream.html#firehose()">firehose()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Streaming-API-Documentation#gardenhose">gardenhose</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/TwitterStream.html#retweet()">retweet()</a></td><td class="pagination"></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Streaming-API-Documentation#spritzer">spritzer</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/TwitterStream.html#sample()">sample()</a></td><td class="pagination"><a href="http://apiwiki.twitter.com/Streaming-API-Documentation#statuses/sample">✔</a></td></tr>
<tr><td><a href="http://apiwiki.twitter.com/Streaming-API-Documentation#birddog">birddog</a></td><td><a href="http://yusuke.homeip.net/twitter4j/en/javadoc/twitter4j/TwitterStream.html#filter()">filter()</a></td><td class="pagination"><a href="http://apiwiki.twitter.com/Streaming-API-Documentation#statuses/filter">✔</a></td></tr>
</table>