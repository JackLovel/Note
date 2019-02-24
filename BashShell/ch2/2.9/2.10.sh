#!/bin/bash

filename=`mktemp`  # create temp file
echo $filename

dirname=`mktemp -d`  # create temp directory
echo $dirname  #   

tmpfile=`mktemp -u`   
echo $tmpfile

mktemp test.XXX
