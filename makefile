build:
	bundle exec jekyll build

push_local:
	rsync -avz --delete-after _site/ /var/www/html/thaos-avocat/

push:
	lftp ftp://thaosavont@ftp.cluster028.hosting.ovh.net -e "mirror -e --ignore-time -R _site www; quit"
	
push_test:
	lftp ftp://jul.legall@ftpperso.free.fr -e "mirror -e --ignore-time -R _site thaos-avocat; put -O thaos-avocat/ free_access/.htaccess; put -O thaos-avocat/ free_access/.htpasswd; quit"

deploy_local: build push_local

deploy_test: build push_test

deploy: build push

serve:
	bundle exec jekyll serve --drafts --watch --host 0.0.0.0

