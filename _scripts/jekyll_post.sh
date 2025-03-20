#!/bin/bash
# TODO check params
# TODO create image dir ?

year=`date +'%Y'`
post_path=`jekyll-post -d ./_posts/$year/ "$1" -a 'layout:"post"' 'image:"images/2022/wallhaven-42v2xx.png"' 'categories: ["article"]'`

# add arg for make conditionnal this intruction
# vi $post_path;