install_veracrypt:
  pkgrepo.managed:
    - ppa: unit193/encryption
    - require_in:
      - pkg: veracrypt

veracrypt:
  pkg.installed
