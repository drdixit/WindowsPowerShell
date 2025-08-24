# WindowsPowerShell
Windows PowerShell 5.1 Configuration

## Run This Command in PowerShell to get your profile path.
```powershell
$profile
```

## output of that command is your PowerShell Profile/Config File change that. 90% of the time it's going to be
```powershell
C:\Users\mail\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```
## or if you don't use onedrive then this one
```powershell
C:\Users\mail\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```

# save this file with
- save type as ~ .all (otherwise file take .txt extension and don't work)
- and Encoding ~ UTF-8 with BOM (otherwise ✘ this symbol looks broken because PowerShell 5 needs UTF-8 with BOM PowerShell 7 don't need UTF-8 with BOM etc.)

# current best way ~ fuature self if you are using onedrive and if modules are not loading (even after forcefully adding env path and stuff) use this
- delete/backup your documents folder (local one from C:\Users\username\Documents)
- and create a symboliclink to doucuments from one drive because when you install modules from cli it install there it's picking Microsoft.PowerShell_profile.ps1 but sometimes not sometimes all the times it's not picking modules from there but after profile is loaded you can manually load modules.i dont get this, such a weird beheviour.
- run powershell as admin for that
```powershell
New-Item -ItemType SymbolicLink -Path "C:\Users\mail\Documents" -Target "C:\Users\mail\OneDrive\Documents"
```
