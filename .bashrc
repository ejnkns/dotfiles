#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



alias ls='ls --color=auto'

#PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(($(sed -nu "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo)/1024))"\033[38;5;22m/"$(($(sed -nu "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo)/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m" \n'


## default prompt below
#PS1='[\u@\h \W]\$ '


#PS1='>: '
#PS1='\[\e[1;33m\][\W]> \[\e[0m\]'
PS1='\[\e[0;33m\]\u \[\e[m\]\[\e[1;34m\]\W \[\e[m\]\[\e[1;33m\]> \[\e[m\]'





## change input colour
#trap 'echo -ne "\e[0"' DEBUG

## to make xterm transparent
#[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

###############
### Aliases ###
###############

### Launching programs ###
alias netflix='(google-chrome-stable &) && exit'
alias chrome='(chromium &) && exit'
alias fire='(node ~/about-blank/server.js &) && (firefox &) && exit'
alias firefox='(firefox &) && exit'
alias steam='(steam &) && exit'
alias vlc='(vlc &) && exit'
alias torr='(transmission-gtk &) && exit'
#alias torr='transmission-cli xclip -o'
alias cad='(freecad &) && exit'
alias files='(xterm -e ranger &) && exit'
alias wallpaper='feh ~/Pictures/wallpapers'
alias emacs='(emacs &) && exit'
alias reddit='rtv'
alias colours='python ~/Documents/programming/colorblocks.py'
alias yt='mpsyt /'
function play() {
	(mpv $@ &)
	}

#case https://youtube.com/watch? ]
#then
#    mpv xclip -o
#fi
alias music='ncmpcpp'
alias server='ssh ejnkns@10.0.0.86'
alias rserver='ssh ejnkns@XXX.XXX.XXX.XXX'

### Terminal/System ###
function cs () {
	cd "$@" && ls
	}
alias ..='cs ..'
alias wifi='nmtui'
alias install='sudo pacman -S'
alias uninstall='sudo pacman -Rs'
alias logoff='sudo pkill -KILL -u ejnkns'
alias upmirr='sudo /usr/local/bin/reflect_mirrors'
alias ping8='ping -c 3 8.8.8.8'
alias pingg='ping -c 3 google.com'
alias flk='xinput float 9' #float laptop keyboard
alias rlk='xinput reattach 9 3' #reatach laptop keyboard
