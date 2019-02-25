#!/bin/bash

# if： input file / of: out.file
# bs: unit block size
# count: copy number

dd if=/dev/zero of=junk.data bs=1M count=1
