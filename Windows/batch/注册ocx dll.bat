for %%1 in (%systemroot%\system32\*.dll) do regsvr32 /s %%1
for %%1 in (%systemroot%\system32\*.ocx) do regsvr32 /s %%1
pause