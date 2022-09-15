#!/bin/sh -l
set -e

sshpass -e ssh "$@"
