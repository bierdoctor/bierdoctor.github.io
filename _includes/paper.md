{% case post.type %}
  {% when 'journal' %}
    {% include journal.md %}
  {% when 'conference' %}
    {% include conference.md %}
  {% when 'workshop' %}
    {% include workshop.md %}
  {% when 'bookchap' %}
    {% include bookchap.md %}
  {% when 'magazine' %}
    {% include magazine.md %}
  {% when 'working' %}
    {% include working.md %}
{% endcase %}
  {% if post.abstract or post.link or post.file or post.acmdl or post.appendix or post.video or post.poster or post.osf %}({% endif %}
  {% if post.type != 'bookchap' and post.abstract %}[Abstract]({{post.url}}){% if post.abstract and post.link or post.file and post.abstract or post.video or post.poster or post.osf %},{% endif %}{% endif %}
  {% if post.link %} [Link]({{post.link}}){% if post.file or post.video or post.poster or post.osf %},{% endif %}{% endif %}
  {% if post.file %} [PDF](/papers/{{ post.file }}){% if post.acmdl or post.video or post.poster or post.osf %},{% endif %}{% endif %}
  {% if post.acmdl %} [ACM DL]({{post.acmdl}}){% if post.appendix or post.video or post.poster or post.osf %},{% endif %}{% endif %}
  {% if post.appendix %} [Appendix](/papers/{{ post.appendix }}) {% endif %}
  {% if post.video %} [Video]({{ post.video }}) {% endif %}
  {% if post.poster %} [Poster](/papers/{{ post.poster }}) {% endif %}
  {% if post.osf %} [Data]({{post.osf}}) {% endif %}
  {% if post.doi %} DOI [{{ post.doi }}](http://dx.doi.org/{{ post.doi }}) {% endif %} 
  {% if post.abstract or post.link or post.file or post.acmdl or post.appendix or post.video or post.poster or post.osf%}){% endif %}