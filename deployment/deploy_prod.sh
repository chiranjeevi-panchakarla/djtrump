#!/bin/sh

ssh AzureUser@52.177.124.28 <<EOF
  cd djtrump
  git pull
  source ~/env/bin/activate
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
