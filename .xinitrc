# COMPOSITOR ("comment out" for xfce)
#####################################

compton --config ~/.config/compton/compton.conf &

# RESTORE WALLPAPER ("comment out" for xfce)
############################################

nitrogen --restore &

# KEYBOARD VOLUME CONTROLS
##########################

xfce4-volumed-pulse &

# HOTKEY DAEMON
###############

sxhkd &

# PANEL ("comment out" for dwm and xfce4)
#########################################

#xfce4-panel &

# WINDOW MANAGER ("comment out" all but one)
############################################

exec dwm
#exec bspwm
#exec i3
#exec xfce4-session
