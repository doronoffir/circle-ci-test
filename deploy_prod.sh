#!/bin/bash


ssh -v root@139.59.132.120 << EOF
  
  echo '1. Updating sources'
  cd /repos/circleci-demo/
  git checkout --force master
  git pull

  echo "2. Restart apache"
  sudo apache2ctl graceful

  echo 'Done!'
  echo 'Done!'
  
EOF