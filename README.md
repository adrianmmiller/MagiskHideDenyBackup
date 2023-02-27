# MagiskHideDenyBackup
A simple module to backup any apps you have in your MagiskHide or Deny lists for easy restore on new ROM flash

Backs up items from MagiskHide List or Deny List to /sdcard/MagiskList.txt

*Inspired by osm0sis from XDA*

For the terminally lazy (like me), ive created a couple of simple magisk modules to backup and restore the 
packages and process you may have hidden via Magisk's MagiskHide (old magisk/custom) or Deny List (canary/alpha). 
In the old days, a trick (to essentially not have to retick all packages and process to hide - especially handy 
if you wanted to have the packages hidden before restoring your apps via something like Migrate, to make sure 
apps never had a chance to see root) was to simply backup /data/adb/magisk.db and restore it on ROM flashes. 
but with magisk.db schema changes this has now ceased to be a safe easy trick. 

So the way now (inspired by osm0sis from XDA) is to dump the list of packages and processes via the 

```magiskhide ls (or magisk --deny ls) ```

command to a text file and reimport it after a new ROM flash (assuming you have kept a copy off device if you do 
have to format data).


**MagiskHideDenyBackup Usage:**

	Install via Magisk Manager or Fox Module Manager

    - Backs up your magiskhide (or magisk deny) list to /sdcard/MagiskList.txt
    - Writes a log file to /sdcard/MagiskHideDenyExport.log
	
	Copy /sdcard/MagiskList.txt off device for safe keeping
	
	The module will remain installed, unless removed, after the process completes.
	It is safe to leave installed and ignored if you like. You can always flash it
	again at any time to update /sdcard/MagiskList.txt 
	

**MagiskHideDenyRestore Usage:**

	1) Make sure /sdcard/MagiskList.txt exists and contains the packages and processes you want to hide/deny
	2) If youre using a Magisk version with MagiskHide, please make sure to enable it before continuing. 
	   Magisk with Deny List does not need to be enabled for restore to work
	3) Install MagiskHideDenyRestore module https://github.com/adrianmmiller/MagiskHideDenyRestore via Magisk Manager or Fox Module Manager

    - Restores your magiskhide (or magisk deny) list from /sdcard/MagiskList.txt
    - Writes a log file to /sdcard/MagiskHideImportExport.log
    
    4) Reboot
    
    The module will remain installed, unless removed, after the process completes.
    It is safe to leave installed and ignored if you like.

Both modules should detect which magisk variety youre using by listing the magisk applets and finding either magiskhide, or not...

**Please note:** the included LICENSE **only** covers the module components provided by the excellent work of Zack5tpg's 
Magisk Module Extended, which is available for here for module creators

https://github.com/Zackptg5/MMT-Extended/


All other work is credited above and **no one may fork or re-present this module as their own for the purposes of trying to 
monetize this module or its content without all parties permission. The module comes specifically without an overall license 
for this intent.**


### Changelog ###

Please see: https://github.com/adrianmmiller/MagiskHideDenyBackup/blob/main/changelog.md
            

### Project Stats ###

![GitHub release (latest by date)](https://img.shields.io/github/v/release/adrianmmiller/MagiskHideDenyBackup?label=Release&style=plastic)
![GitHub Release Date](https://img.shields.io/github/release-date/adrianmmiller/MagiskHideDenyBackup?label=Release%20Date&style=plastic)
![GitHub Releases](https://img.shields.io/github/downloads/adrianmmiller/MagiskHideDenyBackup/latest/total?label=Downloads%20%28Latest%20Release%29&style=plastic)
![GitHub All Releases](https://img.shields.io/github/downloads/adrianmmiller/MagiskHideDenyBackup/total?label=Total%20Downloads%20%28All%20Releases%29&style=plastic)
