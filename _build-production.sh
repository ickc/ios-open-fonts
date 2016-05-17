#!/bin/bash
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
python -mwebbrowser http://127.0.0.1:4000/open-fonts-for-ios/
JEKYLL_ENV=production bundle exec jekyll serve --profile --drafts --incremental