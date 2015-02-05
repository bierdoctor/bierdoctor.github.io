---
layout: page
title: Projects
modified: 
comments: false
share: false
image:
  feature: sample-image-2.jpg
  credit: 
  creditlink: 
---

### Digital Privacy
Summary text...

{% for post in site.posts %}
{% if post.tags contains 'privacy' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}

### Algorithmic Curation
Summary text...

{% for post in site.posts %}
{% if post.tags contains 'curation' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}


### Mental Models of Computer Security
Summary text...

{% for post in site.posts %}
{% if post.tags contains 'security' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}



