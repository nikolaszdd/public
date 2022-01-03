Dism /Mount-Wim /WimFile:c:\winpe_add_drv\install.wim /index:1 /MountDir:c:\winpe_add_drv\mount
Dism /Image:C:\winpe_add_drv\mount /Enable-Feature /featurename:NetFx3
Dism /unmount-Wim /MountDir:c:\winpe_add_drv\mount /commit