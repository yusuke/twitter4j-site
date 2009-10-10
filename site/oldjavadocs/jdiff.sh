rm -Rf $1-$2
cp t4j-template.xml build.xml
sed -i "" -E -e "s/OLD_VER/$1/g" build.xml
sed -i "" -E -e "s/NEW_VER/$2/g" build.xml

ant
#rm -Rf $1-$2/$1
#rm -Rf $1-$2/$1.xml
#rm -Rf $1-$2/$2
#rm -Rf $1-$2/$2.xml
#mv $1-$2 /Users/yusukey/opensource/twitter4j-site/site/jdiff
