#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
open http://127.0.0.1:4000/open-fonts-for-ios/
JEKYLL_ENV=production bundle exec jekyll serve --profile --drafts --incremental