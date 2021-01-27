# i3exit

The purpose of this script is to provide a simple cli based utility that can 
- lock the screen
- power off the computer
- turn off the screen
- logout
- reboot the machine

This is designed for use on a system that uses [i3wm](https://i3wm.org/). 
The current screen locking utility that is in this script is [i3lock-color](https://github.com/Raymo111/i3lock-color),
but any locker can be used by modifying the `lock()` function.


The origional version can be found [here](https://gist.github.com/beast2013/4fa8f8d12adace070afc) and I modified it to suit
my needs. 

Feel free to copy it and modify it to suit yours. 


## Installation.

I have included a simple isntall script that just installs the main script and completion script using symlinks. 

```bash
$ chmod +x install.sh i3exit.sh i3exit-complete.sh
$ sudo ./install.sh
```

