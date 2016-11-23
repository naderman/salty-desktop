{% set user = salt.pillar.get('user') %}

# https://www.vagrantup.com/downloads.html
install_vagrant:
  pkg.installed:
    - name: vagrant
    - sources:
      - vagrant: https://releases.hashicorp.com/vagrant/1.8.7/vagrant_1.8.7_x86_64.deb

vagrant_bib:
  cmd.run:
    - unless: '[ "$(vagrant plugin list|grep bib-vagrant|wc -l)" = "1" ]'
    - user: {{ user }}
    - name: |
        vagrant plugin install bib-vagrant --version 0.1.6
    - require:
      - pkg: install_vagrant

vagrant_cachier:
  cmd.run:
    - unless: '[ "$(vagrant plugin list|grep vagrant-cachier|wc -l)" = "1" ]'
    - user: {{ user }}
    - name: |
        vagrant plugin install vagrant-cachier
    - require:
      - pkg: install_vagrant

vagrant_faster:
  cmd.run:
    - unless: '[ "$(vagrant plugin list|grep vagrant-faster|wc -l)" = "1" ]'
    - user: {{ user }}
    - name: |
        vagrant plugin install vagrant-faster
    - require:
      - pkg: install_vagrant

vagrant_hosts:
  cmd.run:
    - unless: '[ "$(vagrant plugin list|grep vagrant-hosts|wc -l)" = "1" ]'
    - user: {{ user }}
    - name: |
        vagrant plugin install vagrant-hosts
    - require:
      - pkg: install_vagrant

vagrant_logs:
  cmd.run:
    - unless: '[ "$(vagrant plugin list|grep vagrant-logs|wc -l)" = "1" ]'
    - user: {{ user }}
    - name: |
        vagrant plugin install vagrant-logs
    - require:
      - pkg: install_vagrant
