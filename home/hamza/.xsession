# UTF-8 everywhere
export LANG=en_US.UTF-8

# specify location of kshrc
 export ENV=$HOME/.kshrc

# load Xresources file
 xrdb -merge $HOME/.Xresources

# sadly, xclock has a bug where the font selection is ignored when UTF-8
# is enabled, so we unset LANG here.
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# disable system beep
xset b off
 
# use caps lock as escape key
setxkbmap -option caps:escape

# start x-term
xterm &

# Termbar
exec xterm -fs 12 -bg "black" -fg "grey" -name termbar -class termbar -T termbar -e ~/bin/termbar &

# start firefox
firefox &

# Wallpaper
feh --bg-center 

# invoke cwm
/usr/X11R6/bin/cwm

cleanup
