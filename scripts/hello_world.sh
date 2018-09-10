#!/bin/bash
echo "hello world" | tee hello.txt
cp hello.txt ./hello2.txt
echo "goodbye" > 'hello2.txt'
echo "world" >> 'hello2.txt'
cat 'hello2.txt'
exit 0