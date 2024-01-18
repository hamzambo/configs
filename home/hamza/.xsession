# UTF-8 everywhere
export LANG=en_US.UTF-8

# specify location of kshrc
 export ENV=$HOME/.kshrc

# load Xresources file
 xrdb -merge $HOME/.Xresources

# set your background photos
feh --bg-fill --no-fehbg --randomize --recursive ~/data/pictures

# sadly, xclock has a bug where the font selection is ignored when UTF-8
# is enabled, so we unset LANG here.
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# disable system beep
xset b off
 
# use caps lock as escape key
setxkbmap -option caps:escape

# start x-term
xterm &

# start firefox
firefox &


# invoke cwm
/usr/X11R6/bin/cwm
