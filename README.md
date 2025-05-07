# HG / STOW

```sh
sudo pacman -S mercurial stow
```

```sh
hg clone ssh://hg@hg.sr.ht/~snoooooooope/Dotfiles
```

Place .dotfiles in $HOME, then type.

```sh
stow .
```

If updating / adding .config files type
```sh
stow --adopt .
```
