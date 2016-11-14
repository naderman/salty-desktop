{% from "customize_desktop/map.jinja" import customize_desktop with context %}
{% set user = salt.pillar.get('user') %}

bashrc:
  file.managed:
    - name: /home/{{ user }}/.bashrc
    - source: salt://bash/bashrc

