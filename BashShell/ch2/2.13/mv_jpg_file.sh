#!/bin/bash

# mv .jpg to pic directory
find . -type f -name "*.jpg" -exec mv {} pic \;
