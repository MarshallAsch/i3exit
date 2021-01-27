#!/bin/bash

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi


ln -s "$(pwd)/i3exit.sh" /usr/local/bin/i3exit 
ln -s "$(pwd)/i3exit-complete.sh" /etc/bash_completion.d/i3exit-complete.sh


