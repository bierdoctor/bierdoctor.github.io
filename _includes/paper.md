{% case post.type %}
  {% when 'journal' %}
    {% include journal.md %}
    [Abstract]({{post.url}}){% if post.link or post.file %},{% endif %}
    {% if post.link %} [Journal Page]({{post.link}}){% endif %}{% if post.link and post.file %},{% endif %}
    {% if post.file %} [Cached Copy](/papers/{{ post.file }}) {% endif %}
  {% when 'conference' %}
    {% include conference.md %}
    [Abstract]({{post.url}}){% if post.link or post.file %},{% endif %}
    {% if post.link %} [Link]({{post.link}}){% endif %}{% if post.link and post.file %},{% endif %}
    {% if post.file %} [PDF](/papers/{{ post.file }}){% endif %}{% if post.acmdl %},{% endif %}
    {% if post.acmdl %} [ACM DL]({{post.acmdl}}){% endif %}{% if post.appendix %},{% endif %}
    {% if post.appendix %} [Appendix](/papers/{{ post.appendix }}) {% endif %}
      {% comment %}  {% if post.doi %} DOI [{{ post.doi }}](http://dx.doi.org/{{ post.doi }}) {% endif %} {% endcomment %}
  {% when 'workshop' %}
    {% include workshop.md %}
    {% if post.abstract or post.link or post.file or post.poster or post.appendix or post.acmdl %}{% endif %}
    {% if post.abstract %} [Abstract]({{post.url}}){% if post.link or post.file %},{% endif %}{% endif %}
    {% if post.link %} [Link]({{post.link}}){% endif %}{% if post.link and post.file %},{% endif %}
    {% if post.file %} [PDF](/papers/{{ post.file }}){% endif %}{% if post.appendix or post.poster %},{% endif %}
    {% if post.appendix %} [Appendix](/papers/{{ post.appendix }}) {% endif %}
    {% if post.poster %} [Poster](/papers/{{ post.poster }}) {% endif %}
    {% if post.acmdl %} [ACM DL]({{post.acmdl}}){% endif %}{% if post.appendix %},{% endif %}
    {% if post.abstract or post.link or post.file or post.poster or post.appendix or post.acmdl %}{% endif %}
  {% when 'bookchap' %}
    {% include bookchap.md %}
    {% if post.abstract or post.link or post.file or post.appendix %}{% endif %}
    {% if post.abstract %} [Abstract]({{post.url}}){% if post.link or post.file %},{% endif %}{% endif %}
    {% if post.link %} [Link]({{post.link}}){% endif %}{% if post.link and post.file %},{% endif %}
    {% if post.file %} [PDF](/papers/{{ post.file }}){% endif %}{% if post.appendix %},{% endif %}
    {% if post.appendix %} [Appendix](/papers/{{ post.appendix }}) {% endif %}
    {% if post.abstract or post.link or post.file or post.appendix %}{% endif %}
  {% when 'magazine' %}
    {% include magazine.md %}
    [Abstract]({{post.url}}){% if post.link or post.file %},{% endif %}
    {% if post.link %} [Link]({{post.link}}){% endif %}{% if post.link and post.file %},{% endif %}
    {% if post.file %} [PDF](/papers/{{ post.file }}){% endif %}{% if post.acmdl %},{% endif %}
    {% if post.acmdl %} [ACM DL]({{post.acmdl}}){% endif %}{% if post.appendix %},{% endif %}
    {% if post.appendix %} [Appendix](/papers/{{ post.appendix }}) {% endif %}
      {% comment %}  {% if post.doi %} DOI [{{ post.doi }}](http://dx.doi.org/{{ post.doi }}) {% endif %} {% endcomment %}
  {% when 'working' %}
    {% include working.md %}
    {% if post.abstract or post.link or post.file or post.appendix %}{% endif %}
    {% if post.abstract %} [Abstract]({{post.url}}){% if post.link or post.file %},{% endif %}{% endif %}
    {% if post.file %} [PDF](/papers/{{ post.file }}) {% endif %}
    {% if post.abstract or post.link or post.file or post.appendix %}{% endif %}
{% endcase %}
