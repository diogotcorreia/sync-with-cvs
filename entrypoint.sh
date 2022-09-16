#!/bin/bash
set -e

setup_cvs_env() {
  # SSHPASS and CVSROOT are set on action.yml
  export CVS_RSH="/authenticated-ssh.sh"
}

clone_cvs() {
  pushd /sync-with-cvs/clone
  cvs checkout project
  popd
  
  ls -la /sync-with-cvs/clone/project
}

MESSAGE=$(git log -1 --pretty="%B%n%nThis commit was imported from Git.%nOriginal author is %an (%ae).%nOriginal commit is %h at %ai.")
pwd
ls -la

echo "$MESSAGE"

setup_cvs_env
clone_cvs
