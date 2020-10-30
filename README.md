How to fix Fallout 76 on Linux post Update 23.

Prerequisites: Linux OS that can run Steam, Wine, Winetricks, Steam, Proton 5.13+, Protontricks, and a PC capable of running FO76 with a bit of overhead to the system resources.

Arch Linux, Manjaro: `sudo pacman -S python-pip python-pipx python-setuptools python-virtualenv wine winetricks steam`
Ubuntu Distros / Mint /deboan based distros: `sudo apt install python3-pip python3-setuptools python3-venv pipx steam wine-stable`
Fedora: `sudo dnf install python3-pip python3-setuptools python3-libs pipx steam wine-stable winetricks`

Run these afterwards:
```console
user@machine:~$ python3 -m pip install --user pipx
Collecting pipx
  Downloading pipx-0.15.6.0-py3-none-any.whl (43 kB)
     |████████████████████████████████| 43 kB 454 kB/s 
Collecting argcomplete<2.0,>=1.9.4
  Downloading argcomplete-1.12.1-py2.py3-none-any.whl (38 kB)
Collecting userpath>=1.4.1
  Downloading userpath-1.4.1-py2.py3-none-any.whl (14 kB)
Collecting packaging>=20.0
  Downloading packaging-20.4-py2.py3-none-any.whl (37 kB)
Requirement already satisfied: click in /usr/lib/python3/dist-packages (from userpath>=1.4.1->pipx) (7.1.2)
Requirement already satisfied: distro; platform_system == "Linux" in /usr/lib/python3/dist-packages (from userpath>=1.4.1->pipx) (1.5.0)
Requirement already satisfied: six in /usr/lib/python3/dist-packages (from packaging>=20.0->pipx) (1.15.0)
Requirement already satisfied: pyparsing>=2.0.2 in /usr/lib/python3/dist-packages (from packaging>=20.0->pipx) (2.4.7)
Installing collected packages: argcomplete, userpath, packaging, pipx
Successfully installed argcomplete-1.12.1 packaging-20.4 pipx-0.15.6.0 userpath-1.4.1
user@machine:~$ ~/.local/bin/pipx ensurepath
Success! Added /home/user/.local/bin to the PATH environment variable.
/home/user/.local/bin has been been added to PATH, but you need to
    open a new terminal or re-login for this PATH change to take
    effect.

Consider adding shell completions for pipx. Run 'pipx completions' for
instructions.

You will need to open a new terminal or re-login for the PATH changes
to take effect.

Otherwise pipx is ready to go! ✨ 🌟 ✨
user@machine:~$ export PATH="$PATH:$HOME/.local/bin"
user@machine:~$ rehash
user@machine:~$ pipx install protontricks
  installed package protontricks 1.4.2, Python 3.8.6
  These apps are now globally available
    - protontricks
done! ✨ 🌟 ✨
```

Open Steam.
Right-Click on Fallout 76 on the left panel and open Properties.
At the bottom, check the box to Force the use of a Steam Play Compatibility Tool.
Use the droplist to select Proton 5.13+, and close the window.
Install fallout 76 on your Steam Account with Proton 5.13+ enabled.
Run Fallout 76 once knowing it will fail, and exit if it does not on its own.

Download the supplied .dll/s from here. I pulled from Windows10 Pro x64 Update 2004 myself.  
Put the files in the game dir so it's easy for wine to locate automatically.  
Open a terminal type this in : `protontricks 1151340 --gui`
Select the default prefix, select winecfg, go to Libraries and add dbghelp to the list, the other 2 should be there already.
Then type `protontricks 1151340 -q d3dx9 vcrun2015 faudio`. This will take a minute, just wait it out.
Exit the Terminal, then right-click on Falout 76, select Properties, then add this: `WINEDLLOVERRIDES=winedbg.exe=d %command%` to your Launch Options.

Run the game again and Enjoy.

I tested it, it works fine.

