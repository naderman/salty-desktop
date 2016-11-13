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
install_gems:
  - rubocop
install_packages:
  - vim-nox
  - vim-gtk
  - git
