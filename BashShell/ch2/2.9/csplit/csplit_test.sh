#!/bin/bash

# -f: file name prefix

csplit server.log /SERVER/ -n 1 -s {*} -f SERVER -b "%02d.log" ;rm SERVER00.log
