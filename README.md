How to fix Fallout 76 on Linux post Update 23.
(Updated Feb 14th 2021)

Prerequisites: Linux OS that can run Steam, Wine, Winetricks, Steam, Proton 5.0, Proton 5.13+, Protontricks, and a PC capable of running FO76 with a bit of overhead to the system resources.

DO NOT USE PROTON GE WITH THIS GUIDE, IT WILL FAIL.

Arch Linux, Manjaro: sudo pacman -S python-pip python-pipx python-setuptools python-virtualenv wine winetricks steam

Ubuntu Distros / Mint /deboan based distros: sudo apt install python3-pip python3-setuptools python3-venv pipx steam wine-stable

Fedora: sudo dnf install python3-pip python3-setuptools python3-libs pipx steam wine-stable winetricks

Run these afterwards: 
1. python3 -m pip install --user pipx
2. ~/.local/bin/pipx ensurepath
3. Close and reopen the terminal.
4. pipx install protontricks

Open Steam.
Right-Click on Fallout 76 on the left panel and open Properties.
At the bottom, check the box to Force the use of a Steam Play Compatibility Tool.
Use the droplist to select Proton 5.0, and close the window.
Install fallout 76 on your Steam Account with Proton 5.0 enabled.
Run Fallout 76 once knowing it will fail, and exit if it does not on its own.

Type protontricks 1151340 -q d3dx9 vcrun2015 faudio in a Terminal.

Open Properties again, and switch to Proton 5.13+ (OR Proton GE now).

Download the supplied .dll/s from here. I pulled from Windows10 Pro x64 Update 2004 myself.
Put the files in the game dir so it's easy for the game to locate them automatically.

Open a terminal again type this in : protontricks 1151340 --gui

Select the default prefix, select winecfg, go to Libraries and add "dbghelp" to the list, the other 2 should be there already.
Close the Wine GUI, and exit the Terminal, then right-click on Falout 76, select Properties, then add this: 

WINEDLLOVERRIDES=winedbg.exe=d %command% to your Launch Options.

Run the game again and Enjoy.

I tested it, it works fine.

