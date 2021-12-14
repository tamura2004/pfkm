---
layout: default
title: About
xs:
  - 1
  - 2
  - 3
---

|one|two|three|
|:--|:--|:--|
{% for i in page.xs %}
|{{ i }}|{{ i }}|{{ i }}|
{% endfor %}