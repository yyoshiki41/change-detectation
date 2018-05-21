#!/bin/bash

set -e

wget https://aws-codedeploy-ap-northeast-1.s3.amazonaws.com/latest/install
resp=$(grep -A 2 -r "def supported_ruby_versions" install)

if echo "${resp}" | grep -q "2.5" ; then
  echo "codedeploy agent supports ruby v2.5" | ruby reporter.rb
fi

exit 0
