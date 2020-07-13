#!/bin/sh

ssh AzureUser@52.177.124.28 <<EOF
  cd djtrump
  git pull
  source ~/env/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
