---
layout: post-index
title: Papers
comments: false
share: false
---

### Publications
{% assign lastyear = 2100 %}
{% for post in site.posts %}
{% if (post.type == 'journal') || (post.type == 'conference') %}
{% if lastyear != post.year %}
{% assign lastyear = post.year %}
{% endif %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %} 

### Conference Proceedings, Workshop Papers and Posters
{% assign lastyear = 2100 %}
{% for post in site.posts %}
{% if post.type == 'workshop' %}
{% if lastyear != post.year %}
{% assign lastyear = post.year %}
{% endif %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %} 

### Book Chapters
{% assign lastyear = 2100 %}
{% for post in site.posts %}
{% if post.type == 'bookchap' %}
{% if lastyear != post.year %}
{% assign lastyear = post.year %}
{% endif %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %} 


