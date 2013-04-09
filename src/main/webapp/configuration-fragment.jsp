<tag:h3 name="$[ja:一般]$[en:Misc.]$[ko:일반]" title="$[ja:一般]$[en:Misc.]$[ko:일반]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티 명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>debug</td><td>$[ja:デバッグ有効化フラグ。内蔵 Logger 使用時のみ有効。]$[en:Enables deubg output. Effective only with the embedded logger.]$[ko:디버그 유효화 플래그. 내장 Logger 사용시만 유효]</td><td>false</td></tr>
<tr><td>includeRTs</td><td>$[ja:タイムイン取得メソッドの返り値にRwteetsを含めるかどうかのフラグ。]$[en:If set to true, retweets will be included in the timeline methods' resopnse.]$[ko:타임인 취득 메서드의 반환값에 Rwteets 를 포함할지 여부의 플래그]</td><td>true</td></tr>
<tr><td>includeEntities</td><td>$[ja:タイムイン取得メソッドの返り値に追加情報を含めるかどうかのフラグ。]$[en:If set to true, entities will be included in the timeline methods' resopnse.]$[ko:타임인 취득 메서드의 반환값에 추가정보를 포함할지 여부의 플래그]</td><td>true</td></tr>
<tr><td>includeMyRetweet</td><td>$[ja:trueにセットすると列イートしたステータスのIDをStatus#getCurrentUserRetweetId()で取得できる。]$[en:set to true, any statuses returned that have been retweeted by the authenticating user will include an additional field: Status#getCurrentUserRetweetId ()]$[ko:true 로 설정하면 Rwteets 한 상태의 ID를 Status#getCurrentUserRetweetId() 로 취득가능하다.]</td><td>true</td></tr>
<tr><td>jsonStoreEnabled</td><td>$[ja:DataObjectFactoryにJSONデータを保存するかどうかのフラグ。]$[en:If set to true, raw JSON forms will be stored in DataObjectFactory.]$[ko:DataObjectFactory에 JSON데이터를 보존할지 여부의 플래그]</td><td>false</td></tr>
<tr><td>mbeanEnabled</td><td>$[ja:MBeanを有効化するかどうかのフラグ。]$[en:If set to true, mbean will be registerd.]$[ko:MBean을 유효화할지 여부의 플래그]</td><td>false</td></tr>
<tr><td>loggerFactory</td><td>$[ja:ログ出力実装]$[en:Logger implimentation]$[ko:로그 출력 implimentation]<br>$[ja:サポートされる実装]$[en:Supported implimentations]$[ko:서포트되는 implimentation]:<br>&nbsp;twitter4j.internal.logging.SLF4JLoggerFactory<br>&nbsp;twitter4j.internal.logging.CommonsLoggingLoggerFactory<br>&nbsp;twitter4j.internal.logging.Log4JLoggerFactory<br>&nbsp;twitter4j.internal.logging.JULLoggerFactory<br>&nbsp;twitter4j.internal.logging.NullLoggerFactory<br>&nbsp;twitter4j.internal.logging.StdNullLoggerFactory</td><td>null</td></tr>
<tr><td>contributingTo</td><td>$[ja:contributingtoのユーザーIDを指定する。]$[en:sets the user id contributing to.]$[ko:contributingto 의 사용자 ID를 지정한다.]</td><td>-1L</td></tr>
</table></tag:h3><tag:h3 name="OAuth" title="OAuth"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>oauth.consumerKey</td><td>$[ja:デフォルト]$[en:Default]$[ko:디폴트] OAuth consumer key</td><td>null</td></tr>
<tr><td>oauth.consumerSecret</td><td>$[ja:デフォルト]$[en:Default]$[ko:디폴트] OAuth consumer secret</td><td>null</td></tr>
<tr><td>oauth.accessToken</td><td>$[ja:デフォルト]$[en:Default]$[ko:디폴트] OAuth access token</td><td>null</td></tr>
<tr><td>oauth.accessTokenSecret</td><td>$[ja:デフォルト]$[en:Default]$[ko:디폴트] OAuth access token secret</td><td>null</td></tr>
</table></tag:h3><tag:h3 name="Basic / xAuth $[ja:認証]$[en:authentication]$[ko:인증]" title="Basic / xAuth $[ja:認証]$[en:authentication]$[ko:인증]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>user</td><td>$[ja:デフォルトのスクリーン名]$[en:Default screen name]$[ko:디폴트의 스크린명]</td><td>null</td></tr>
<tr><td>password</td><td>$[ja:デフォルトのパスワード]$[en:Default password]$[ko:디폴트 비밀번호]</td><td>null</td></tr>
</table></tag:h3><tag:h3 name="$[ja:ストリーミング]$[en:Streaming]$[ko:스트리밍]" title="$[ja:ストリーミング]$[en:Streaming]$[ko:스트리밍]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>stream.user.repliesAll</td><td>$[ja:replies=all を有効化する]$[en:enables replies=all parameter]$[ko:replies=all 를 유효화 한다.]</td><td>true</td></tr>
<tr><td>stream.enableStallWarnings</td><td>$[ja:stall warningsを受信する]$[en:set to true to receive stall warnings]$[ko:stall warnings 을 수신한다.]</td><td>true</td></tr>
</table></tag:h3><tag:h3 name="$[ja:HTTP接続]$[en:HTTP connection]$[ko:HTTP접속]" title="$[ja:HTTP接続]$[en:HTTP connection]$[ko:HTTP접속]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>http.connectionTimeout</td><td>$[ja:HTTP接続タイムアウト(ミリ秒)]$[en:Http connection timeout in milliseconds]$[ko:HTTP접속 타임아웃(밀리초)]</td><td>20000</td></tr>
<tr><td>http.readTimeout</td><td>$[ja:HTTPリードタイムアウト(ミリ秒)]$[en:Http read timeout in milliseconds]$[ko:HTTP read 타임아웃(밀리초)]</td><td>120000</td></tr>
<tr><td>http.streamingReadTimeout</td><td>$[ja:ストリーミングAPI の HTTPリードタイムアウト(ms)]$[en:Streaming API's Http Read timeout in milliseconds]$[ko:스트리밍 API HTTP read 타임아웃(밀리초)]</td><td>300000</td></tr>
<tr><td>http.retryCount</td><td>$[ja:HTTPリトライ回数]$[en:Number of HTTP retries]$[ko:HTTP 재시도 횟수]</td><td>0</td></tr>
<tr><td>http.retryIntervalSecs</td><td>$[ja:HTTPリトライ間隔(秒)]$[en:HTTP retry interval in seconds]$[ko:HTTP 재시도 간격(秒)]</td><td>5</td></tr>
<tr><td>http.useSSL</td><td>$[ja:SSL接続有効化フラグ]$[en:Enables SSL connection.]$[ko:SSL 접속유효화 플래그]</td><td>false</td></tr>
<tr><td>http.prettyDebug</td><td>$[ja:デバッグ出力を整形するかどうか]$[en:prettify JSON debug output if set to true.]$[ko:디버그 출력의 변형 여부]</td><td>false</td></tr>
</table></tag:h3><tag:h3 name="$[ja:HTTPプロキサーバ]$[en:HTTP proxy server]$[ko:HTTP 프록시서버]" title="$[ja:HTTPプロキサーバ]$[en:HTTP proxy server]$[ko:HTTP 프록시서버]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>http.proxyHost</td><td>$[ja:HTTPプロキシサーバホスト名]$[en:HTTP proxy server host name]$[ko:HTTP 프록시서버 호스트명]</td><td>null</td></tr>
<tr><td>http.proxyPort</td><td>$[ja:HTTPプロキシサーバポート番号]$[en:HTTP proxy server port]$[ko:HTTP 프록시서버 포트번호]</td><td>null</td></tr>
<tr><td>http.proxyUser</td><td>$[ja:HTTPプロキシサーバユーザ名]$[en:HTTP proxy server user name]$[ko:HTTP 프록시서버 사용자명]</td><td>null</td></tr>
<tr><td>http.proxyPassword</td><td>$[ja:HTTPプロキシサーバパスワード]$[en:HTTP proxy server password]$[ko:HTTP 프록시서버 비밀번호]</td><td>null</td></tr>
</table></tag:h3><tag:h3 name="$[ja:メディアサポート]$[en:Media support]$[ko:Media support]" title="$[ja:メディアサポート]$[en:Media support]$[ko:Media support]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>media.provider</td><td>$[ja:デフォルトメディアプロバイダ]$[en:default media provider]$[ko:default media provider]<br>$[ja:サポートされるプロバイダ]$[en:Supported providers]$[ko:Supported providers]:<br>twitter, imgly, plixi, lockerz, twipple, twitgoo, twitpic, yfrog</td><td>twitter</td></tr>
<tr><td>media.providerAPIKey</td><td>$[ja:メディアプロバイダAPI Key]$[en: media provider API Key]$[ko: media provider API Key]</td><td>null</td></tr>
</table></tag:h3><tag:h3 name="$[ja:ベースURL]$[en:Base URLs]" title="$[ja:ベースURL]$[en:Base URLs]$[ko:Base URLs]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>restBaseURL</td><td>REST API $[ja:ベース]$[en:base]$[ko:base] URL</td><td>http://api.twitter.com/1.1/</td></tr>
<tr><td>streamBaseURL</td><td>Streaming API $[ja:ベース]$[en:base]$[ko:base] URL</td><td>http://stream.twitter.com/1.1/</td></tr>
<tr><td>siteStreamBaseURL</td><td>Site Streams API $[ja:ベース]$[en:base]$[ko:base] URL</td><td>https://sitestream.twitter.com/1.1/</td></tr>
<tr><td>userStreamBaseURL</td><td>User Stream API $[ja:ベース]$[en:base]$[ko:base] URL</td><td>https://userstream.twitter.com/1.1/</td></tr>
<tr><td>oauth.requestTokenURL</td><td>OAuth request token URL</td><td>http://api.twitter.com/oauth/request_token</td></tr>
<tr><td>oauth.accessTokenURL</td><td>OAuth access token URL</td><td>http://api.twitter.com/oauth/access_token</td></tr>
<tr><td>oauth.authorizationURL</td><td>OAuth authorization URL</td><td>http://api.twitter.com/oauth/authorize</td></tr>
<tr><td>oauth.authenticationURL</td><td>OAuth authentication URL</td><td>http://api.twitter.com/oauth/authenticate</td></tr>
</table></tag:h3><tag:h3 name="$[ja:非同期]$[en:Asynchronous]$[ko:비동기]" title="$[ja:非同期]$[en:Asynchronous]$[ko:비동기]"><table class="api-matrix"><tr><th class="method-path">$[ja:プロパティ名]$[en:Property name]$[ko:프로퍼티명]</th><th class="t4jmethod">$[ja:説明]$[en:Description]$[ko:설명]</th><th class="credential-rate">$[ja:デフォルト値]$[en:Default value]$[ko:디폴트값]</th></tr>
<tr><td>async.numThreads</td><td>$[ja:非同期処理スレッド数]$[en:Number of threads handling asynchronous invocations]$[ko:비동기처리 스래드수]</td><td>1</td></tr>
<tr><td>async.dispatcherImpl</td><td>$[ja:非同期処理実装クラス名]$[en:Asynchronous dispatcher implementation class name]$[ko:비동기처리 구현클래스명]</td><td>twitter4j.internal.async.DispatcherImpl</td></tr>
</table></tag:h3>
