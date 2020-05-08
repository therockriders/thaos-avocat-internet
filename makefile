build:
	bundle exec jekyll build

push_local:
	rsync -avz --delete-after _site/ /var/www/html/thaos-avocat/

push:
	lftp ftp://thaosavont@ftp.cluster028.hosting.ovh.net -e "mirror -e --ignore-time -R _site www; quit"
	
deploy_local: build push_local

deploy: build push

serve:
	bundle exec jekyll serve --drafts --watch --host 0.0.0.0
