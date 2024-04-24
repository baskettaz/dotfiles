urxvtd -o -q -f # runs the URxvt's deamon each time
                # -o keeps the daemon process always running
                # -q (quiet) doesn't display a welcome message
                # -f (fork) bounds URxvt to its control socket (???)
                
xrdb -merge ~/.config/X11/.Xresources # merges local settings and .Xresources

# always last: lets i3 run in the background
exec i3
