unzip /Users/yusukey/maven2/net/homeip/yusuke/twitter4j/$1/twitter4j-$1-sources.jar -d $1-source
unzip /Users/yusukey/maven2/net/homeip/yusuke/twitter4j/$2/twitter4j-$2-sources.jar -d $2-source
./jdiff.sh $1 $2
rm -Rf $1-source
rm -Rf $2-source

