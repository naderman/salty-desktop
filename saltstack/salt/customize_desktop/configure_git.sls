{% from "customize_desktop/map.jinja" import customize_desktop with context %}
{% set user = salt.pillar.get('user') %}
{% set git_user = customize_desktop.configure_git.get('user') %}
{% set git_core = customize_desktop.configure_git.get('core') %}
{% set git_merge = customize_desktop.configure_git.get('merge') %}
{% set git_credential = customize_desktop.configure_git.get('credential') %}

{% if git_user.get('name') %}
user.name:
  git.config_set:
    - value: {{ customize_desktop.configure_git.user.name }}
    - user: {{ user }}
    - is_global: true
    - require:
      - pkg: git
{% endif %}

{% if git_user.get('email') %}
user.email:
  git.config_set:
    - value: {{ customize_desktop.configure_git.user.email }}
    - user: {{ user }}
    - is_global: true
    - require:
      - pkg: git
{% endif %}

{% if git_core.get('editor') %}
core.editor:
  git.config_set:
    - value: {{ customize_desktop.configure_git.core.editor }}
    - user: {{ user }}
    - is_global: true
    - require:
      - pkg: git
{% endif %}

{% if git_merge.get('tool') %}
merge.tool:
  git.config_set:
    - value: {{ customize_desktop.configure_git.merge.tool }}
    - user: {{ user }}
    - is_global: true
    - require:
      - pkg: git
{% endif %}

{% if git_merge.get('log') %}
merge.log:
  git.config_set:
    - value: {{ customize_desktop.configure_git.merge.log }}
    - user: {{ user }}
    - is_global: true
    - require:
      - pkg: git
{% endif %}

{% if git_credential.get('helper') %}
credential.helper:
  git.config_set:
    - value: {{ customize_desktop.configure_git.credential.helper }}
    - user: {{ user }}
    - is_global: true
    - require:
      - pkg: git
{% endif %}

{% for alias, replacement in customize_desktop.configure_git.get('alias') %}
alias.{{ alias }}:
  git.config_set:
    - value: {{ replacement }}
    - user: {{ user }}
    - is_global: true
    - require:
      - pkg: git
{% endfor %}

git:
  pkg.installed
