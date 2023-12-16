# BakkesLeague-Launcher
A .bat file to launch both Bakkesmod and Rocket League, allowing your plugins and game to both load in just one click. No installation or setup required!

It is mapped to the default installation locations for both Bakkesmod and Rocket League.
If your Bakkesmod and/or Rocket League is not installed in these locations, have no fear!

Step-by-step solution:
* Copy the path of the folder containing Bakkesmod.exe or RocketLeague.exe. Refer to this guide if you need help: https://www.howtogeek.com/670447/how-to-copy-the-full-path-of-a-file-on-windows-10/#:~:text=To%20copy%20the%20full%20path%20of%20a%20file%20or%20folder,in%20the%20File%20Explorer%20toolbar.
* Open launcher .bat by right-clicking and clicking "open with notepad" or your preferred text editing program.
* In launcher.bat, change cd /d "C:\Program Files\BakkesMod" for the proper Bakkesmod folder or cd /d "C:\Program Files\Epic Games\rocketleague\Binaries\Win64" for the proper Rocket League folder, to cd /d "YOUR_PATH_HERE".
* Save launcher.bat with ctrl+s.

TLDR: Replace the corresponding file paths in launcher.bat with cd /d "YOUR_PATH_HERE".

Finally, double-click on launcher.bat to run the program. It may take a few seconds to launch Rocket League, but Bakkesmod should launch right away.

## Feel free to open an issue ticket (in the top menu) if you have any problems or questions!
