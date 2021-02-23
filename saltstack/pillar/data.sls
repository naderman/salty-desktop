user: naderman
pre_desktop:
  disable_quiet_graphical_boot: false
  locale_system: de_DE
  timezone: Europe/Berlin
  accept_mscorefonts_eula: true
  install_restricted_extras: true
post_desktop:
  autologin: false
customize_desktop:
  third_party_applications:
    - google-chrome
    - spotify
    - virtualbox
    - vagrant
    - nodejs
    - dropbox
    - veracrypt
  configure_git:
    user:
      name: Nils Adermann
      email: naderman@naderman.de
    core:
      editor: vim
    color:
      ui: "true"
    merge:
      log: "true"
    credential:
      helper: "cache"
    alias:
      dc: "diff --cached"
  configure_vim: True
  configure_bash: True
  generate_ssh_keys:
    - comment: naderman@saumur
      identifier: id
  install_php:
    version: 7.1.0RC6
install_gems:
  - rubocop
install_packages:
  - apt-file
  - vim-nox
  - vim-gtk
  - git
  - keepassx
  - nginx
  - curl
  - build-essential
  - postgresql
  - redis-server
  - redis-tools
  - thunderbird
  - gimp
  - inkscape
  - mesa-utils
  - mysql-server
  - skype
  - pngcrush
  - quassel-client
  - shutter
  - inetutils-traceroute
  - vlc
  - kdenlive
  - golang-go
  - network-manager-openvpn
