build:
	bundle exec jekyll build

push_local:
	rsync -avz --delete-after _site/ /var/www/html/thaos-avocat/

# lftp ftp://jul.legall:loesfofr@ftpperso.free.fr -e "mirror -e --ignore-time -R _site blog; put -O blog/ free_access/.htaccess; put -O blog/ free_access/.htpasswd; quit"
push:
	echo "TODO"
	
deploy_local: build push_local

deploy: build push_free

serve:
	bundle exec jekyll serve --drafts --watch
