#!/bin/sh -l
set -e

# TODO add a way to verify host key
sshpass -e ssh -o "StrictHostKeyChecking=no" "$@"
