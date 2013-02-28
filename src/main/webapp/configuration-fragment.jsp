<tag:h3 name="$[ja:一般]$[en:Misc.]" title="$[ja:一般]$[en:Misc.]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>debug</td><td>$[ja:デバッグ有効化フラグ。内蔵 Logger 使用時のみ有効。]$[en:Enables deubg output. Effective only with the embedded logger.]</td><td>false</td></tr>
<tr><td>includeRTs</td><td>$[ja:タイムライン取得メソッドの返り値にRwteetsを含めるかどうかのフラグ。]$[en:If set to true, retweets will be included in the timeline methods' resopnse.]</td><td>true</td></tr>
<tr><td>includeEntities</td><td>$[ja:タイムライン取得メソッドの返り値に追加情報を含めるかどうかのフラグ。]$[en:If set to true, entities will be included in the timeline methods' resopnse.]</td><td>true</td></tr>
<tr><td>includeMyRetweet</td><td>$[ja:trueにセットすると列イートしたステータスのIDをStatus#getCurrentUserRetweetId()で取得できる。]$[en:set to true, any statuses returned that have been retweeted by the authenticating user will include an additional field: Status#getCurrentUserRetweetId ()]</td><td>true</td></tr>
<tr><td>jsonStoreEnabled</td><td>$[ja:DataObjectFactoryにJSONデータを保存するかどうかのフラグ。]$[en:If set to true, raw JSON forms will be stored in DataObjectFactory.]</td><td>false</td></tr>
<tr><td>mbeanEnabled</td><td>$[ja:MBeanを有効化するかどうかのフラグ。]$[en:If set to true, mbean will be registerd.]</td><td>false</td></tr>
<tr><td>loggerFactory</td><td>$[ja:ログ出力実装]$[en:Logger implimentation]<br>$[ja:サポートされる実装]$[en:Supported implimentations]:<br>&nbsp;twitter4j.internal.logging.SLF4JLoggerFactory<br>&nbsp;twitter4j.internal.logging.CommonsLoggingLoggerFactory<br>&nbsp;twitter4j.internal.logging.Log4JLoggerFactory<br>&nbsp;twitter4j.internal.logging.JULLoggerFactory<br>&nbsp;twitter4j.internal.logging.NullLoggerFactory<br>&nbsp;twitter4j.internal.logging.StdNullLoggerFactory</td><td>null</td></tr>
<tr><td>contributingTo</td><td>$[ja:contributingtoのユーザーIDを指定する。]$[en:sets the user id contributing to.]</td><td>-1L</td></tr>
</table></tag:h3><tag:h3 name="OAuth" title="OAuth"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>oauth.consumerKey</td><td>$[ja:デフォルト]$[en:Default] OAuth consumer key</td><td>null</td></tr>
<tr><td>oauth.consumerSecret</td><td>$[ja:デフォルト]$[en:Default] OAuth consumer secret</td><td>null</td></tr>
<tr><td>oauth.accessToken</td><td>$[ja:デフォルト]$[en:Default] OAuth access token</td><td>null</td></tr>
<tr><td>oauth.accessTokenSecret</td><td>$[ja:デフォルト]$[en:Default] OAuth access token secret</td><td>null</td></tr>
</table></tag:h3><tag:h3 name="Basic / xAuth $[ja:認証]$[en:authentication]" title="Basic / xAuth $[ja:認証]$[en:authentication]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>user</td><td>$[ja:デフォルトのスクリーン名]$[en:Default screen name]</td><td>null</td></tr>
<tr><td>password</td><td>$[ja:デフォルトのパスワード]$[en:Default password]</td><td>null</td></tr>
</table></tag:h3><tag:h3 name="$[ja:ストリーミング]$[en:Streaming]" title="$[ja:ストリーミング]$[en:Streaming]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>stream.user.repliesAll</td><td>$[ja:replies=all を有効化する]$[en:enables replies=all parameter]</td><td>true</td></tr>
<tr><td>stream.enableStallWarnings</td><td>$[ja:stall warningsを受信する]$[en:set to true to receive stall warnings]</td><td>true</td></tr>
</table></tag:h3><tag:h3 name="$[ja:HTTP接続]$[en:HTTP connection]" title="$[ja:HTTP接続]$[en:HTTP connection]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>http.connectionTimeout</td><td>$[ja:HTTP接続タイムアウト(ミリ秒)]$[en:Http connection timeout in milliseconds]</td><td>20000</td></tr>
<tr><td>http.readTimeout</td><td>$[ja:HTTPリードタイムアウト(ミリ秒)]$[en:Http read timeout in milliseconds]</td><td>120000</td></tr>
<tr><td>http.streamingReadTimeout</td><td>$[ja:ストリーミングAPI の HTTPリードタイムアウト(ms)]$[en:Streaming API's Http Read timeout in milliseconds]</td><td>300000</td></tr>
<tr><td>http.retryCount</td><td>$[ja:HTTPリトライ回数]$[en:Number of HTTP retries]</td><td>0</td></tr>
<tr><td>http.retryIntervalSecs</td><td>$[ja:HTTPリトライ間隔(秒)]$[en:HTTP retry interval in seconds]</td><td>5</td></tr>
<tr><td>http.useSSL</td><td>$[ja:SSL接続有効化フラグ]$[en:Enables SSL connection.]</td><td>false</td></tr>
<tr><td>http.prettyDebug</td><td>$[ja:デバッグ出力を整形するかどうか]$[en:prettify JSON debug output if set to true.]</td><td>false</td></tr>
</table></tag:h3><tag:h3 name="$[ja:HTTPプロキサーバ]$[en:HTTP proxy server]" title="$[ja:HTTPプロキサーバ]$[en:HTTP proxy server]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>http.proxyHost</td><td>$[ja:HTTPプロキシサーバホスト名]$[en:HTTP proxy server host name]</td><td>null</td></tr>
<tr><td>http.proxyPort</td><td>$[ja:HTTPプロキシサーバポート番号]$[en:HTTP proxy server port]</td><td>null</td></tr>
<tr><td>http.proxyUser</td><td>$[ja:HTTPプロキシサーバユーザ名]$[en:HTTP proxy server user name]</td><td>null</td></tr>
<tr><td>http.proxyPassword</td><td>$[ja:HTTPプロキシサーバパスワード]$[en:HTTP proxy server password]</td><td>null</td></tr>
</table></tag:h3><tag:h3 name="$[ja:メディアサポート]$[en:Media support]" title="$[ja:メディアサポート]$[en:Media support]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>media.provider</td><td>$[ja:デフォルトメディアプロバイダ]$[en:default media provider]<br>$[ja:サポートされるプロバイダ]$[en:Supported providers]:<br>twitter, imgly, plixi, lockerz, twipple, twitgoo, twitpic, yfrog</td><td>twitter</td></tr>
<tr><td>media.providerAPIKey</td><td>$[ja:メディアプロバイダAPI Key]$[en: media provider API Key]</td><td>null</td></tr>
</table></tag:h3><tag:h3 name="$[ja:ベースURL]$[en:Base URLs]" title="$[ja:ベースURL]$[en:Base URLs]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>restBaseURL</td><td>REST API $[ja:ベース]$[en:base] URL</td><td>http://api.twitter.com/1.1/</td></tr>
<tr><td>streamBaseURL</td><td>Streaming API $[ja:ベース]$[en:base] URL</td><td>http://stream.twitter.com/1.1/</td></tr>
<tr><td>siteStreamBaseURL</td><td>Site Streams API $[ja:ベース]$[en:base] URL</td><td>https://sitestream.twitter.com/1.1/</td></tr>
<tr><td>userStreamBaseURL</td><td>User Stream API $[ja:ベース]$[en:base] URL</td><td>https://userstream.twitter.com/1.1/</td></tr>
<tr><td>oauth.requestTokenURL</td><td>OAuth request token URL</td><td>http://api.twitter.com/oauth/request_token</td></tr>
<tr><td>oauth.accessTokenURL</td><td>OAuth access token URL</td><td>http://api.twitter.com/oauth/access_token</td></tr>
<tr><td>oauth.authorizationURL</td><td>OAuth authorization URL</td><td>http://api.twitter.com/oauth/authorize</td></tr>
<tr><td>oauth.authenticationURL</td><td>OAuth authentication URL</td><td>http://api.twitter.com/oauth/authenticate</td></tr>
</table></tag:h3><tag:h3 name="$[ja:非同期]$[en:Asynchronous]" title="$[ja:非同期]$[en:Asynchronous]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]</th><th class="t4jmethod">$[ja:説明]$[en:Description]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]</th></tr>
<tr><td>async.numThreads</td><td>$[ja:非同期処理スレッド数]$[en:Number of threads handling asynchronous invocations]</td><td>1</td></tr>
<tr><td>async.dispatcherImpl</td><td>$[ja:非同期処理実装クラス名]$[en:Asynchronous dispatcher implementation class name]</td><td>twitter4j.internal.async.DispatcherImpl</td></tr>
</table></tag:h3>