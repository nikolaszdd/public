Dism /Mount-Wim /WimFile:c:\winpe_add_drv\install.wim /index:1 /MountDir:c:\winpe_add_drv\mount
rem Dism /image:c:\winpe_add_drv\mount /Add-Driver /driver:c:\winpe_add_drv\add_drv /recurse /forceunsigned
pause
rem dism /image:C:\winpe_add_drv\mount /enable-feature /featurename:NetFx3 /source:C:\winpe_add_drv\sxs

pause

Dism /image:c:\winpe_add_drv\mount /Add-Driver /driver:c:\winpe_add_drv\add_drv /recurse /forceunsigned
pause
Dism /unmount-Wim /MountDir:c:\winpe_add_drv\mount /commit
pause