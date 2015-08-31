uphinx
========

Quick vagrant config for php and nginx built using Ubuntu trusty 64.

### About

uphinx = **u**(buntu) + **ph**(p) + (ng)**inx**

index.php in the Web folder just displays `phpinfo();` it is of course a place holder and can be removed/overwritten.

`config.yaml` can be appended with other packages you may want to use.

### Requirements

* [Vagrant](http://www.vagrantup.com)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### How to use

1. Clone this repo
2. Add your site(index.php) and whatever needed to the web directory
3. Vagrant up
4. Hit localhost:8080 to see your site.
