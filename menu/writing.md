---
layout: default
title: Writing
---
<!-- <ul class="posts">
  {% for post in site.posts %}

    {% unless post.next %}
      <h3>{{ post.date | date: '%Y' }}</h3>
    {% else %}
      {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
      {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
      {% if year != nyear %}
        <h3>{{ post.date | date: '%Y' }}</h3>
      {% endif %}
    {% endunless %}

    <li itemscope>
      <a href="{{ site.github.url }}{{ post.url }}">{{ post.title }}</a>
      <p class="post-date"><span><i class="fa fa-calendar" aria-hidden="true"></i> {{ post.date | date: "%B %-d" }} - <i class="fa fa-clock-o" aria-hidden="true"></i> {% include read-time.html %}</span></p>
    </li>

  {% endfor %}
</ul> -->

{% for post in site.posts %}
    <div class="posts">
    <h1>
        <a href="{{ site.github.url }}{{ post.url }}">{{ post.title }}</a>
    </h1>
    <!-- {% if post.image %}
    <div class="thumbnail-container">
        <a href="{{ site.github.url }}{{ post.url }}"><img src="{{ site.github.url }}/assets/img/writing/{{ post.image }}"></a>
    </div>
    {% endif %}
    <p>
        {{ post.content | strip_html | truncate: 350 }} <a href="{{ site.github.url }}{{ post.url }}">Read more</a>
        <span class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> {{ post.date | date_to_string }} - <i class="fa fa-clock-o" aria-hidden="true"></i> {% include read-time.html %}</span>
    </p> -->
    </div>
{% endfor %}