#!/bin/sh
function download(){
mkdir -p $1
wget http://twitter.com/$1/$2 -O $1/$2

}
download statuses/followers T4J_hudson.json
download statuses/friends T4J_hudson.json
download users/show twit4j.json

