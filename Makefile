# Makefile to simplify running various actions for the project

clean:
	echo 'Cleaning generated web site'
	rm -fR _site

build:
	bundle exec jekyll build --config _config.yml,_config_dev.yml

serve:
	bundle exec jekyll serve --config _config.yml,_config_dev.yml

test: clean build test_spell test_html

test_spell: clean build
	mdspell -n -a -r --en-us --dictionary dicts/en_US-large *.md */*.md */*/*.md

test_html: clean build
	htmlproofer --allow-hash-href --only-4xx --empty-alt-ignore --url-ignore /edit\\/master/,/issues\\/new/,/jenkins.platformdxc.com/,/\\/apis$/,/\\/use_cases$/,/\\/architecture$/,/\\/services$/,/\\/tools$/ ./_site
