###############################################################################
##                                                                           ##
## The MIT License (MIT)                                                     ##
##                                                                           ##
## Copyright (c) 2014 AT&T Inc.                                              ##
##                                                                           ##
## Permission is hereby granted, free of charge, to any person obtaining     ##
## a copy of this software and associated documentation files                ##
## (the "Software"), to deal in the Software without restriction, including  ##
## without limitation the rights to use, copy, modify, merge, publish,       ##
## distribute, sublicense, and/or sell copies of the Software, and to permit ##
## persons to whom the Software is furnished to do so, subject to the        ##
## conditions as detailed in the file LICENSE.                               ##
##                                                                           ##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS   ##
## OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF                ##
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.    ##
## IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY      ##
## CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT ##
## OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR  ##
## THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                ##
##                                                                           ##
###############################################################################
# == Class: profile::system::debian
#
# Installs necessary packages and remove old kernels.
#
# === Authors
#
# James Kyle <james@jameskyle.org>
#
# === Copyright
#
# Copyright 2013 AT&T Foundry, unless otherwise noted.
class profile::system::debian {
  include apt
  package {['vim', 'zsh', 'git-core', 'lvm2']: }

#  exec { 'remove_old_kernels':
#    command  => 'dpkg -l \'linux-*\' | sed \'/^ii/!d;/\'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"\'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d\' | xargs sudo apt-get -y purge',
#    onlyif   => 'ls /boot | grep -v `uname -r` | grep -v \
#    \'grub\|lost+found\|memtest\'',
#    provider => 'shell',
#    path     => '/bin:/usr/bin:/sbin:/usr/sbin:/etc/kernel/postrm.d',
#  }

}