#!/bin/bash
set -e

clone_cvs() {
  # SSHPASS and CVSROOT are set on action.yml
  export CVS_RSH="/authenticated-ssh.sh"
  pushd /sync-with-cvs/clone
  pwd
  cvs checkout project
  popd
  
  ls -la /sync-with-cvs/clone/project
}

MESSAGE=$(git log -1 --pretty="%B%n%nThis commit was imported from Git.%nOriginal author is %an (%ae).%nOriginal commit is %h at %ai.")
pwd
ls -la

echo "$MESSAGE"

clone_cvs
