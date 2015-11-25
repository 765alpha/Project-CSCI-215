# Project-CSCI-215
So this script is a fun little piece of malware in the trojan variety.

What it does:
1) Pull a cute image of a bunny trying to eat thistle from the internet and save it to temp.
2) Change the wallpaper in the registry and send the message "Please restart computer for
changes to occur", as I was unable to find a way for the comptuer to successfully reconize
there was a change and to display it.
3) The script finds it's own location and the location of the startup folder and then moves
itself to the startup folder, where it will lie.
4) On restart, the wallpaper should be the bunny, and this shall be repeated due to the
script being int he startup folder. Errors should be a bonus for scaring the poor victim
(unless it breaks this process somehow).

To get rid of the script, one will have to navigate to the startup folder located in the
user's %AppData% (mine is AppData\Roaming\Microsoft\Windows\Start Menu\Programs)
