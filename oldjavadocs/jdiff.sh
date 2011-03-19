rm -Rf $1-$2
cp t4j-template.xml /tmp/build.xml
cd /tmp/
sed -i "" -E -e "s/OLD_VER/$1/g" build.xml
sed -i "" -E -e "s/NEW_VER/$2/g" build.xml

ant

rm -Rf /Users/yusukey/opensource/twitter4j.war/oldjavadocs/$1-$2
mv $1-$2 /Users/yusukey/opensource/twitter4j.war/oldjavadocs/

rm -Rf /Users/yusukey/opensource/twitter4j.war/oldjavadocs/$2
mv $2 /Users/yusukey/opensource/twitter4j.war/oldjavadocs/

rm -Rf /tmp/$1.xml
rm -Rf /tmp/$2.xml
rm -Rf /build.xml
rm -Rf /tmp/$1

#rm -Rf $1-$2/$1
#rm -Rf $1-$2/$1.xml
#rm -Rf $1-$2/$2
#rm -Rf $1-$2/$2.xml
#mv $1-$2 /Users/yusukey/opensource/twitter4j-site/site/jdiff
