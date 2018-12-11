#!/bin/sh

set -e

BUNDLE=/usr/local/bin/bundle

if [ -f Gemfile ]; then
  $BUNDLE install
  $BUNDLE exec rake spec $@
else
  awspec $@
fi
