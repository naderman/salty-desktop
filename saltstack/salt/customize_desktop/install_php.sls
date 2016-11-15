{% from "customize_desktop/map.jinja" import customize_desktop with context %}
{% set user = salt.pillar.get('user') %}

php-src:
  git.latest:
    - name: https://github.com/php/php-src
    - target: /home/{{ user }}/projects/php/php-src
    - user: {{ user }}
    - rev: php-{{ customize_desktop.install_php.version }}
    - force_reset: True
    - require_in:
      - cmd: php-compiled

php-compiled:
  cmd.run:
    - unless: '[ "$(php-config --version)" = "{{ customize_desktop.install_php.version }}" ]'
    - cwd: /home/{{ user }}/projects/php/php-src
    - user: {{ user }}
    - name: |
        source /etc/apache2/envvars
        ./buildconf --force &&./configure --with-gettext --with-apxs2=/usr/bin/apxs2 --enable-fpm --enable-cgi --with-pgsql --with-pdo-pgsql --enable-mbstring --with-mysqli=mysqlnd --with-readline --with-pdo-mysql=mysqlnd --with-config-file-path=/etc/php5/cli/php.ini --enable-zip --with-curl --with-mcrypt --with-openssl --disable-debug --enable-intl --with-zlib --with-bz2 --with-tidy && make -j8 && sudo make install
    - require:
      - pkg: php-build-pkgs

php-build-pkgs:
  pkg.installed:
    - pkgs:
      - build-essential
      - autoconf
      - bison
      - re2c
      - apache2
      - apache2-dev
      - libxml2-dev
      - pkg-config
      - libssl-dev
      - libbz2-dev
      - libcurl4-nss-dev
      - libmcrypt-dev
      - libpq-dev
      - libreadline-dev
      - libtidy-dev
