<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:skelton title="Twitter4J - $[ja:設定]$[en:Configuration]"
             description="$[ja:Twitter4Jの設定方法]$[en:Twitter4J configuration at glance]"
             path="http://twitter4j/$[ja:ja]$[en:en/configuration.html">

    <div class="api-support">
        <tag:h2 name="configuration" title="$[ja:一般設定]$[en:Generic properties]">
            $[ja:Twitter4J はいくつもの設定可能なプロパティが存在します。プロパティは twitter4j.properties ファイルから、ConfigurationBuilderクラスから、またはシステムプロパティから設定できます。]$[en:There are a number of properties available for configuring Twitter4J. You can specify properties via twitter4j.properties file, ConfigurationBuilder class or System Property as follows : -]
            <ol class="main">
                <tag:h3-num name="fileconfiguration"
                            title="$[ja:twitter4j.properties から]$[en:via twitter4j.properties]">
                    $[ja:標準的なプロパティファイルを &quot;twitter4j.properties&quot; という名前で保存します。 &quot;twitter4j.properties&quot; はカレントディレクトリ、またはクラスパスのルート(WEB-INF/classes等)に配置してください。]$[en:Save a standard properties file named &quot;twitter4j.properties&quot;. Place it to either the current directory, root of the classpath directory.]
<pre class="codeSample">debug=true
oauth.consumerKey=*********************
oauth.consumerSecret=******************************************
oauth.accessToken=**************************************************
oauth.accessTokenSecret=******************************************</pre>
                </tag:h3-num>
                <tag:h3-num name="builderconfiguration"
                            title="$[ja:ConfigurationBuilder から]$[en:via ConfigurationBuilder]">
                    $[ja:<a href="http://twitter4j.org/ja/javadoc/twitter4j/conf/ConfigurationBuilder.html">ConfigurationBuilder</a> クラスを使うと以下のようにプログラムから設定をすることができます。]$[en:You can use
                    <a href="http://twitter4j.org/ja/javadoc/twitter4j/conf/ConfigurationBuilder.html">ConfigurationBuilder</a> class to configure Twitter4J programatically as follows:]
<pre class="codeSample">ConfigurationBuilder cb = new ConfigurationBuilder();
cb.setDebugEnabled(true)
  .setOAuthConsumerKey("*********************")
  .setOAuthConsumerSecret("******************************************")
  .setOAuthAccessToken("**************************************************")
  .setOAuthAccessTokenSecret("******************************************");
TwitterFactory tf = new TwitterFactory(cb.build());
Twitter twitter = tf.getInstance();</pre>
                </tag:h3-num>
                <tag:h3-num name="systempropertyconfiguration" title="$[ja:システムプロパティ から]$[en:via System Properties]">
                    $[ja:システムプロパティから設定をすることもできます。システムプロパティから設定する場合はプロパティ名の先頭に &quot;twitter4j.&quot; をつける必要があることに注意してください。]$[en:You can configure Twitter4J via System properties as well. Note that you need &quot;twitter4j.&quot; prefix.]
<pre class="codeSample">$ java -Dtwitter4j.debug=true
    -Dtwitter4j.oauth.consumerKey=*********************
    -Dtwitter4j.oauth.consumerSecret=******************************************
    -Dtwitter4j.oauth.accessToken=**************************************************
    -Dtwitter4j.oauth.accessTokenSecret=******************************************
    -cp twitter4j-core-<include>latest-version.fragment</include>.jar:yourApp.jar yourpackage.Main</pre>
                </tag:h3-num>
                <tag:h3-num name="environmentvariableconfiguration"
                            title="$[ja:環境偏す数から]$[en:via environment variables]">
                    $[ja:OSの環境変数から設定をすることもできます。環境変数から設定する場合はプロパティ名の先頭に &quot;twitter4j.&quot; をつける必要があることに注意してください。]$[en:You can configure Twitter4J via environment variables as well. Note that you need &quot;twitter4j.&quot; prefix. This makes it easier to test, stage and deploy apps running on Heroku.]
<pre class="codeSample">$ export twitter4j.debug=true
$ export twitter4j.oauth.consumerKey=*********************
$ export twitter4j.oauth.consumerSecret=******************************************
$ export twitter4j.oauth.accessToken=**************************************************
$ export twitter4j.oauth.accessTokenSecret=******************************************
$ java -cp twitter4j-core-<include>latest-version.fragment</include>.jar:yourApp.jar yourpackage.Main</pre>
                    $[ja:Herokuでは]$[en:On Heroku]:
<pre class="codeSample">$ heroku config:add oauth.consumerKey=**********
$ heroku config:add oauth.consumerSecret=************
$ heroku config:add oauth.accessToken=**************************************************
$ heroku config:add oauth.accessTokenSecret=******************************************
$ git push heroku master</pre>

                </tag:h3-num>
            </ol>
        </tag:h2>
        <tag:h2 name="properties" title="$[ja:プロパティ一覧]$[en:Available Configuration Properties]">
            <%@include file="configuration-fragment.jsp" %>
        </tag:h2>
        <tag:h2 name="logger" title="$[ja:ログ設定]$[en:Logger Configuration]">
            $[ja:デフォルト Twitter4J は標準出力にログを記録します。SLF4J, Commons-Logging, Log4J のいずれかがクラスパスに存在する場合はそのログライブラリを使ってメッセージが出力されます。-Dtwitter4j.loggerFactory=twitter4j.internal.logging.NullLoggerFactory をシステムプロパティに指定することでログ出力を止めることも出来ます。]
            $[en:By default, Twitter4J prints log messages to standard output. If any of SLF4J, Commons-Logging, Log4J is in the classpath, log messages will be printed via the available logging library. You can disable logging by specifying -Dtwitter4j.loggerFactory=twitter4j.internal.logging.NullLoggerFactory to the system properties.]
        </tag:h2>
    </div>
    <br>
</tag:skelton>