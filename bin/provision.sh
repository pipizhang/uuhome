#!/bin/bash
RUBY_VERSION="2.4.2"
APP_DATABASE="uuhome"
APP_DBPASSWD="banana"

sudo update-locale LC_ALL="en_US.utf8"
sudo apt-get update
sudo apt-get upgrade -y

# Dependencies
sudo apt-get install -y build-essential \
                        curl \
                        git \
                        imagemagick \
                        libpq-dev \
                        libreadline-dev \
                        libmysqlclient-dev \
                        libmagick++-dev \
                        nodejs \
                        opencc

# Memcached
sudo apt-get install -y memcached

# Nginx
sudo apt-get install -y nginx

# PostgreSQL
sudo apt-get install -y postgresql
sudo -u postgres createdb --locale en_US.utf8 --encoding UTF8 --template template0 $APP_DATABASE
echo "ALTER USER postgres WITH PASSWORD '$APP_DBPASSWD';" | sudo -u postgres psql

# Ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"'               >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars
sudo -H -u vagrant bash -i -c "rbenv install $RUBY_VERSION"
sudo -H -u vagrant bash -i -c "rbenv rehash"
sudo -H -u vagrant bash -i -c "rbenv global $RUBY_VERSION"
sudo -H -u vagrant bash -i -c "gem install bundler --no-ri --no-rdoc"
sudo -H -u vagrant bash -i -c "rbenv rehash"


