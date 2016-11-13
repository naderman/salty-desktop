# https://www.dropbox.com/help/246?path=desktop_client_and_web_app
install_dropbox:
  pkgrepo.managed:
    - name: deb [arch=i386,amd64] http://linux.dropbox.com/ubuntu xenial main
    - file: /etc/apt/sources.list.d/dropbox.list
    - keyid: 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
    - keyserver: pgp.mit.edu
    - require_in:
      - pkg: dropbox
      - pkg: python-gpgme

dropbox:
  pkg.installed
python-gpgme:
  pkg.installed
