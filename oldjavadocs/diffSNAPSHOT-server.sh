unzip /Users/yusukey/maven2/net/homeip/yusuke/twitter4j/$1/twitter4j-$1-sources.jar -d $1-source
cp -r /Users/yusukey/.hudson/jobs/Twitter4J/workspace/trunk/src/main/java ./$2-source
./jdiff.sh $1 $2
rm -Rf $1-source
rm -Rf $2-source

