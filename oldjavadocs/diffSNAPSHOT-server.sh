rm -Rf /tmp/$1-source
rm -Rf /tmp/$2-source

unzip /Users/yusukey/maven2/org/twitter4j/twitter4j-core/$1/twitter4j-core-$1-sources.jar -d /tmp/$1-source
rm /tmp/$1-source/META-INF/MANIFEST.MF
rm /tmp/$1-source/META-INF/LICENSE.txt
unzip /Users/yusukey/maven2/org/twitter4j/twitter4j-async/$1/twitter4j-async-$1-sources.jar -d /tmp/$1-source
rm /tmp/$1-source/META-INF/MANIFEST.MF
rm /tmp/$1-source/META-INF/LICENSE.txt
unzip /Users/yusukey/maven2/org/twitter4j/twitter4j-stream/$1/twitter4j-async-$1-stream.jar -d /tmp/$1-source
rm /tmp/$1-source/META-INF/MANIFEST.MF
rm /tmp/$1-source/META-INF/LICENSE.txt
unzip /Users/yusukey/maven2/org/twitter4j/twitter4j-media-support/$1/twitter4j-async-$1-media-support.jar -d /tmp/$1-source
rm /tmp/$1-source/META-INF/MANIFEST.MF
rm /tmp/$1-source/META-INF/LICENSE.txt
cp -r /Users/yusukey/opensource/twitter4j/twitter4j-core/src/main/java /tmp/$2-source/
rm /tmp/$1-source/META-INF/MANIFEST.MF
rm /tmp/$1-source/META-INF/LICENSE.txt
cp -r /Users/yusukey/opensource/twitter4j/twitter4j-async/src/main/java/* /tmp/$2-source/
rm /tmp/$2-source/META-INF/MANIFEST.MF
rm /tmp/$1-source/META-INF/LICENSE.txt
cp -r /Users/yusukey/opensource/twitter4j/twitter4j-stream/src/main/java/* /tmp/$2-source/
rm /tmp/$2-source/META-INF/MANIFEST.MF
rm /tmp/$1-source/META-INF/LICENSE.txt
cp -r /Users/yusukey/opensource/twitter4j/twitter4j-media-support/src/main/java/* /tmp/$2-source/
rm /tmp/$2-source/META-INF/MANIFEST.MF
rm /tmp/$1-source/META-INF/LICENSE.txt
./jdiff.sh $1 $2

rm -Rf /tmp/$1-source
rm -Rf /tmp/$2-source

