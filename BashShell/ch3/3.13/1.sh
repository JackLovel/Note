#!/bin/bash

PID=$(pidof gedit)
tail -f file.txt --pid $PID
