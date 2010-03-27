unzip /Users/yusukey/maven2/org/twitter4j/twitter4j-core/$1/twitter4j-core-$1-sources.jar -d $1-source
cp -r /Users/yusukey/opensource/twitter4j/twitter4j-core/src/main/java ./$2-source
./jdiff.sh $1 $2
rm -Rf $1-source
rm -Rf $2-source

