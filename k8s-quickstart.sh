#!/usr/bin/env bash
TOP_LEVEL_MYDIR=$(dirname $0)
if [[ "$1" == "" ]]; then
  read -e -i "${DOCKER_ACCOUNT}" -p "Please enter your DockerHub user/account name: " input
  name="${input:-$DOCKER_ACCOUNT}"
else
  DOCKER_ACCOUNT=$1
fi
$TOP_LEVEL_MYDIR/todolist-goof/k8s/quickstart.sh $DOCKER_ACCOUNT

