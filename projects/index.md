---
layout: page
title: Projects
comments: false
share: false
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



