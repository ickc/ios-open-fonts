develop: browser
	bundle exec jekyll serve --profile --incremental --drafts
production: browser
	JEKYLL_ENV=production bundle exec jekyll serve --profile --drafts --incremental
browser:
	python -mwebbrowser http://127.0.0.1:4000/ios-open-fonts/
