#!/bin/bash



#All lines that start with letter m 
egrep -r '^m' ./ filenames.txt


#All lines that contain three digit numbers 
egrep '[0-9][0-9][0-9]' filenames.txt

#All echo statments with at lest three words 
egrep -r "^echo" filenames.txt

#All lines that would make a good password 
egrep '^.\w\w[a-z]{10}(.*)' pw.txt