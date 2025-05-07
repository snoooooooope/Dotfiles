################################################################################
###                         User Fish Abbreviations                          ###
################################################################################

### Aliases ###
alias ls 'eza --icons=always'
alias hx helix

### Abbr ###

## GIT ##
abbr -a --set-cursor='%' gcm 'git commit -m "%"'
abbr -a gaa 'git add .'
abbr -a gst 'git status'

## MERCURIAL ##
abbr -a --set-cursor='%' hgcm 'hg commit -m "%"'
abbr -a hga 'hg add .'
abbr -a hgs 'hg status'

## PACMAN ##
abbr -a pcl 'sudo pacman -Sc'
abbr -a pdch 'pacman -Qdt'
abbr -a pdcl 'sudo pacman -Qdtq | sudo pacman -Rns -'
abbr -a pin 'sudo pacman -S'
abbr -a pup 'sudo pacman -Syu'
abbr -a psr 'pacman -Ss'

## CORE ##
abbr -a cp 'cp -i'
abbr -a mv 'mv -i'
abbr -a rg 'rg -i'
abbr -a jf 'sudo journalctl -f -u'
abbr -a jb 'sudo journalctl -b -u'
abbr -a txvf 'tar -xvf'
abbr -a tcvf 'tar -cvf'
abbr -a font-family 'fc-list : family | sort | uniq'

## FISH ##
abbr -a path_list 'echo $fish_user_paths | tr " " "\n" | nl'
abbr -a --set-cursor='%' path_delete 'set --erase --universal fish_user_paths[%]'

## NPM ##
abbr -a nrd 'npm run dev'
