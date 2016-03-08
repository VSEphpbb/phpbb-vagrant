A simple Vagrant LAMP stack for running phpBB. This uses [scotch-box](https://github.com/scotch-io/scotch-box), a preconfigured Vagrant box.

## Get Started

* Download and Install [Vagrant](https://www.vagrantup.com/downloads.html)
* Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Clone this GitHub Repository:
```sh
git clone git@github.com:VSEphpbb/phpbb-vagrant.git --branch scotchbox && cd phpbb-vagrant
```
* Clone the phpBB GitHub repository
```sh
git clone git@github.com:phpbb/phpbb.git --branch master phpbb
```
* Run vagrant up
```sh
vagrant up
```
* Access phpBB at http://192.168.33.10/phpBB/
* Username: **admin**
* Password: **adminadmin**

## Additional commands:
* Access your server from the command line:
```sh
vagrant ssh
```
* Pause your server:
```sh
vagrant suspend
```
* Delete your server
```sh
vagrant destroy
```

## Customizing the phpBB configuration

You can change how phpBB is pre-configured, for example to use PostgreSQL or MySQL instead of SQLite, by editing the `phpbb-install-config.yml` in the setup directory. The next time you run `vagrant up` it will be installed under the new configuration.

---

## Database Access

### MySQL

- Hostname: localhost or 127.0.0.1
- Username: root
- Password: root
- Database: scotchbox

### PostgreSQL

- Hostname: localhost or 127.0.0.1
- Username: root
- Password: root
- Database: scotchbox
- Port: 5432

### MongoDB

- Hostname: localhost
- Database: scotchbox
- Port: 27017

## SSH Access

- Hostname: 127.0.0.1:2222
- Username: vagrant
- Password: vagrant

## Mailcatcher

Just do:

```
vagrant ssh
mailcatcher --http-ip=0.0.0.0
```

Then visit:

```
http://192.168.33.10:1080
```

---

## Box Features

### System Stuff

- Ubuntu 14.04 LTS (Trusty Tahr)
- PHP 5.6
- Ruby 2.2.x
- Vim
- Git
- cURL
- GD and Imagick
- Composer
- Beanstalkd
- Node
- NPM
- Mcrypt

### Database Stuff

- MySQL
- PostgreSQL
- SQLite

### Caching Stuff

- Redis
- Memcache and Memcached

### Node Stuff

- Grunt
- Bower
- Yeoman
- Gulp
- Browsersync
- PM2

### Laravel Stuff

- Laravel Installer
- Laravel Envoy
- Blackfire Profiler

## The MIT License (MIT)

Copyright (c) 2014-2015 Nicholas Cerminara, scotch.io, LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
