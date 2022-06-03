#!/bin/sh

count=0
x=$(checkupdates -n | wc -l) > $count
echo $x
