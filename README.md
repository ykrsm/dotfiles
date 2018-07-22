# Instlation
```vimscript
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gvimrc ~/.gvimrc
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.ycm_extra_conf.py ~/.ycm_extra_conf.py
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.hyper.js ~/.hyper.js

git config --global core.excludesfile ~/.gitignore
```

Windows Registry Hack
* Caps Locl <-> L Ctrl
* R Ctrl -> L Alt

```
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,04,00,00,00,1d,00,3a,00,3a,00,1d,00,1d,e0,38,00,00,00,00,00
```
https://www.howtogeek.com/howto/windows-vista/disable-caps-lock-key-in-windows-vista/
https://www.experts-exchange.com/articles/2155/Keyboard-Remapping-CAPSLOCK-to-Ctrl-and-Beyond.html
https://superuser.com/questions/1190329/can-i-switch-the-alt-and-ctrl-keys-on-my-keyboard
