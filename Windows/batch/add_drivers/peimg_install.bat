Dism /Mount-Wim /WimFile:c:\winpe_add_drv\boot.wim /index:1 /MountDir:c:\winpe_add_drv\mount
cd "C:\winpe_add_drv\win7peTools\PETools"


peimg /inf=C:\winpe_add_drv\add_drv\SATA\iaStorAC.inf c:\winpe_add_drv\mount
peimg /inf=C:\winpe_add_drv\add_drv\SATA\iaAHCIC.inf c:\winpe_add_drv\mount
peimg /inf=C:\winpe_add_drv\add_drv\USB3.0\HCSwitch\iusb3hcs.inf c:\winpe_add_drv\mount
peimg /inf=C:\winpe_add_drv\add_drv\USB3.0\Win7\iusb3hub.inf c:\winpe_add_drv\mount
peimg /inf=C:\winpe_add_drv\add_drv\USB3.0\Win7\iusb3xhc.inf c:\winpe_add_drv\mount

Dism /unmount-Wim /MountDir:c:\winpe_add_drv\mount /commit