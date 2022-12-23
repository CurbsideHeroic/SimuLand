$joinCred = (New-Object pscredential -ArgumentList ([pscustomobject]@{Username = 'LocalAdmin';Password = (ConvertTo-SecureString -String 'P@$$word' -AsPlainText -Force)[0]}))

Test-NetConnection -ComputerName autoland.local

Add-Computer -Domain autoland.local -Credential $joinCred

shutdown -r -t 10