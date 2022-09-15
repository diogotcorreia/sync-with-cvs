#!/bin/sh -l
set -e

MESSAGE=$(git log -1 --pretty="%B%n%nThis commit was imported from Git.%nOriginal author is %an (%ae).%nOriginal commit is %h at %ai.")
pwd
ls -la

echo $MESSAGE
