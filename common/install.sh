#!/system/bin/sh
LogFile="/storage/emulated/0/MagiskHideDenyExport.log"
ListFile="/storage/emulated/0/MagiskList.txt"

if [ ! -f "$LogFile" ]; then
    touch "$LogFile"
fi

ui_print ""
ui_print "**********************************************************"
ui_print "Exporting MagiskHide or Magisk Deny List to MagiskList.txt" 2>&1 | tee $LogFile
ui_print "**********************************************************"
ui_print ""
i=$(magisk --list)
if echo "$i" | grep -q "magiskhide"; then
	echo "Your Magisk supports: MagiskHide hiding method" 2>&1 | tee -a $LogFile
	MagiskCmd='magiskhide'
else	
	echo "Your Magisk supports: Zygisk Deny List hiding method" 2>&1 | tee -a $LogFile
	MagiskCmd='magisk --denylist'
fi 
echo "Command used for listing: $MagiskCmd ls" 2>&1 | tee -a $LogFile
$MagiskCmd ls | sed "s/|/_/" > $ListFile
if [ $? -eq 0 ] ;	then
		echo "MagiskList.txt: written to sdcard successfully" 2>&1 | tee -a $LogFile
		ui_print "**********************************************************"
	else
		echo "MagiskList.txt: NOT written to sdcard" 2>&1 | tee -a $LogFile
		ui_print "**********************************************************"		
fi
