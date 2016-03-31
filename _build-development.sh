#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
cp README.md index.md
open http://127.0.0.1:4000/open-fonts-for-ios/
bundle exec jekyll serve --profile --incremental --drafts