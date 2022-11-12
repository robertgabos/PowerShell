# Creating Parity ("RAID5" type Storage Space)
New-VirtualDisk -StoragePoolFriendlyName "Storage Pool 1" -FriendlyName "StorageSpace1" -ResiliencySettingName Parity -NumberOfDataCopies 1 -NumberOfColumns 4 -ProvisioningType Fixed -UseMaximumSize -Verbose
