#!/bin/sh
function download(){
mkdir -p $1
wget --user=twit4j --password=twitter4j http://twitter.com/$1$2 -O $1$2
}
function postdownload(){
mkdir -p $1
wget --post-data=$3 --user=twit4j --password=twitter4j http://twitter.com/$1$2 -O $1$2
}
function downloadSearch(){
mkdir -p $1
wget --user=twit4j --password=twitter4j http://search.twitter.com/$1$2 -O $1$2
}
function downloadSearchAs(){
mkdir -p $1
wget --user=twit4j --password=twitter4j http://search.twitter.com/$1$2 -O $1$3
}
download "" search.json?q=twitter
download "" trends.json

downloadSearch trends/ current.json
downloadSearch trends/ daily.json
downloadSearch trends/ weekly.json
download statuses/ public_timeline.json
download statuses/ home_timeline.json
download statuses/ show/123.xml
postdownload statuses/retweet/ 2245071380.json ""
download users/show/ twit4j.json
download statuses/followers/ T4J_hudson.json
download statuses/friends/ T4J_hudson.json
download statuses/user_timeline/ testiverse.json 
downloadSearchAs trends/ daily.json?date=2004-03-19 daily-empty.json
