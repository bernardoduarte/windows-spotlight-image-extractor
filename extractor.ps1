Copy-Item -Path "$env:userprofile\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" -Destination "$env:userprofile\Desktop\temp" -Recurse
Get-ChildItem "$env:userprofile\Desktop\temp\*" | Rename-Item -NewName { $_.name -Replace '\.*$','.jpg' }
Write-Host "Spotlight Images extracted to: $env:userprofile\Desktop\temp"
