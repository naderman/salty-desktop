install_veracrypt:
  pkgrepo.managed:
    - ppa: unit193/encryption
    - require_in:
      - pkg: veracrypt

veracrypt:
  pkg.installed

/home/naderman/Documents:
  file.symlink:
    - target: /media/veracrypt1
    - force: true
