Get-ADUser -Filter {(userAccountControl -ne 514)} -SearchBase "ObjectPath"|ForEach-Object -process {Add-ADGroupMember -identity "GroupName" -Members $_.SamAccountName}

#-Filter {(userAccountControl -ne 514) - атрибут состояния учетной записи, 514 - заблокированная учетка, ne(not equal) - незаблокированная
