---
layout: page
title: Current Projects
comments: false
share: false
---

Descriptions of my ongoing research projects are below. For information on my past projects, please click [here](/past_projects)

### Managing Privacy of Derived Data
Sensors, usage logs, and other forms of automated collection of personal data are becoming harder if not impossible to avoid; from personal health and fitness trackers to city-wide surveillance cameras to web application and server logs, they are a pervasive aspect of the physical and digital infrastructure around us. In isolation, sensor data may seem non-sensitive and harmless; however, aggregation produces derived data consisting of new insights and inferences that are not obvious to users and can be surprising, unsettling or harmful when used for unexpected purposes.

Consent (notice and choice) is the typical framework for data sharing rights and permissions regarding technology use. But when sensor data collection is automatic and requires no manual interaction from the user, it is difficult to imagine how people can be making informed decisions about their preferences. I am studying how to help users become better able to recognize situations when their behaviors produce data that might be used to infer information they and others might prefer not to reveal, and how to design mechanisms that provide support for coordination and social awareness about acceptable use of derived data.

This project is supported by National Science Foundation under Grant No. [CNS-1524296](http://www.nsf.gov/awardsearch/showAward?AWD_ID=1524296). For more information see [https://bitlab.cas.msu.edu/privacy/](https://bitlab.cas.msu.edu/privacy/).

{% for post in site.posts %}
{% if post.tags contains 'privacy' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}


### Misdirected Email

{% for post in site.posts %}
{% if post.tags contains 'curation' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}






