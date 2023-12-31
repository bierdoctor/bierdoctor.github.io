---
layout: page
title: Past Projects
comments: false
share: false
---

### Algorithmic Curation in Social Media
Socio-technical systems provide access to ever-increasing quantities of information online. To help people cope with information overload, these systems implement algorithmic curation: automated selection of what content should be displayed to users, what should be hidden, and in what order it should be presented. Virtually every Internet user who reads online news, visits social media sites, or uses a search engine has encountered algorithmic curation at some point, probably without even realizing it.

Personalization algorithms are a necessary and beneficial part of the infrastructure of a socio-technical system. But, because algorithmic curation is invisible, users do not know the extent to which their choices about what they might read or who they might communicate with in social media are constrained.  For example, effects of a feedback loop inherent in the rules that prioritize Facebook posts for display could have unintended effects on which Facebook Friends those users stay in touch with. How might properties of human communication and behavior interact with filtering algorithms to shape information access and use in increasingly connected and automated online environments?

This project was supported by National Science Foundation under Grant No. [IIS-1217212](http://nsf.gov/awardsearch/showAward?AWD_ID=1217212). 

{% for post in site.posts %}
{% if post.tags contains 'curation' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}


### Mental Models of Computer Security
Everyone who installs software or apps on a computing device, uses email and social media, and surfs the web makes computer security decisions as part of these activities, whether or not they are aware they are doing so. However, it is very difficult for users to learn about the consequences of these decisions. Users may not know when an action has an adverse security consequence, because outcomes are often delayed or invisible. 

For example, when a user clicks on a shady link in an email message, he may not immediately recognize this as a risky activity. Later on, if he learns that his account has been compromised, he may not be able to associate that feedback with the action that triggered the breach. If users can't learn from direct feedback as part of their experiences, then how do they develop the mental models they use to make security-related decisions, and how do these mental models correspond with security-related behaviors?

This project was supported by National Science Foundation under Grant No. [CNS-1115926](http://www.nsf.gov/awardsearch/showAward.do?AwardNumber=1115926). 

{% for post in site.posts %}
{% if post.tags contains 'security' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}