{% from "customize_desktop/map.jinja" import customize_desktop with context %}
{% set user = salt.pillar.get('user') %}

dotvim:
  git.latest:
    - name: https://github.com/naderman/dotvim
    - target: /home/{{ user }}/.vim
    - user: {{ user }}
    - force_clone: True
    - force_fetch: True
    - submodules: True

