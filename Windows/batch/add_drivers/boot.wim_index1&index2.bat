Dism /Mount-Wim /WimFile:c:\winpe_add_drv\boot.wim /index:1 /MountDir:c:\winpe_add_drv\mount
Dism /image:c:\winpe_add_drv\mount /Add-Driver /driver:c:\winpe_add_drv\add_drv /recurse /forceunsigned
Dism /unmount-Wim /MountDir:c:\winpe_add_drv\mount /commit
Dism /Mount-Wim /WimFile:c:\winpe_add_drv\boot.wim /index:2 /MountDir:c:\winpe_add_drv\mount
Dism /image:c:\winpe_add_drv\mount /Add-Driver /driver:c:\winpe_add_drv\add_drv /recurse /forceunsigned
Dism /unmount-Wim /MountDir:c:\winpe_add_drv\mount /commit