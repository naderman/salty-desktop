# https://www.vagrantup.com/downloads.html
install_vagrant:
  pkg.installed:
    - name: vagrant
    - sources:
      - vagrant: https://releases.hashicorp.com/vagrant/1.8.7/vagrant_1.8.7_x86_64.deb
