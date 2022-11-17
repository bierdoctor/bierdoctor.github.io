---
layout: page
title: Projects
comments: false
share: false
---

<!-- Descriptions of my ongoing research projects are below. For information on my past projects, please click [here](/past_projects). -->

### Managing Privacy of Derived Data
Sensors, usage logs, and other forms of automated collection of personal data are becoming harder if not impossible to avoid; from personal health and fitness trackers to city-wide surveillance cameras to web application and server logs, they are a pervasive aspect of the physical and digital infrastructure around us. In isolation, sensor data may seem non-sensitive and harmless; however, aggregation produces derived data consisting of new insights and inferences that are not obvious to users and can be surprising, unsettling or harmful when used for unexpected purposes.

Consent (notice and choice) is the typical framework for data sharing rights and permissions regarding technology use. But when sensor data collection is automatic and requires no manual interaction from the user, it is difficult to imagine how people can be making informed decisions about their preferences. I am studying how to help people become better able to recognize situations when their behaviors produce data that might be used to infer information they and others might prefer not to reveal, and how to design mechanisms that provide support for coordination and social awareness about acceptable uses of derived data.

This project was supported by National Science Foundation under Grant No. [CNS-1524296](http://www.nsf.gov/awardsearch/showAward?AWD_ID=1524296). 

{% for post in site.posts %}
{% if post.tags contains 'privacy' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}


### Misdirected Email
Email is an essential tool for communication and social interaction that has been repurposed over the years as a broadcast medium connecting businesses with their customers, and as an authentication mechanism. These uses are enabled by the fact that the only barrier to reaching someone by email is knowing their email address. This feature has made email an attractive platform for scammers and a vector for security threats, but it also has another side-effect that is becoming increasingly common: misdirected email, or legitimate emails that are intended for somebody else but are sent to the wrong recipient. At best, misdirected email contributes to email overload; but at worst, sensitive private information can be revealed via misdirected email to unintended third parties. I am studying what causes misdirected email to be sent, how people on the receiving end deal with it, and what might be done to help both senders and recipients prevent it.


{% for post in site.posts %}
{% if post.tags contains 'misdirectedemail' %}
{% capture pub %}
{% include paper.md %}
{% endcapture %}
* {{ pub | strip_newlines }}
{% endif %}
{% endfor %}


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



