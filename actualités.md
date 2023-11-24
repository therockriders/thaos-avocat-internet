---
layout: main_page
title: Toutes les actualités
---
<div id="news" class="row news pb-5">
  {% for post in site.posts %}
  <article class="col-lg-4">
      <a href="{{ site.baseurl }}{{post.url}}">
        <img src="{{ site.baseurl }}/{{post.image}}" alt="{{post.title}}" class="news-image"/>
        <h2 class="pt-5 pr-5 pl-5">{{post.title}}</h2>
      </a>
      <p class="pr-5 pl-5 font-weight-bold">Le {{ post.date | date : "%d/%m/%Y" }}</p>
      <p class="pr-5 pl-5">{{post.excerpt | remove: '<p>' | remove: '</p>' }}</p>
  </article>
  {% endfor %}
</div>