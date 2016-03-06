# Proxmox Virtual Environment Backup Retention

![Build Status](https://gitlab.com/mechinn/pveretention/badges/master/build.svg)

```
usage: pveretention [-h] [-l LOCATION] [--vm VM] (-d DAYS | -c COUNT)

Keep Proxmox Virtual Environment backups based on given retention.
Either keep a number of backups for each VM or keep backups made within the last number of days.
The user can also specify a limited set of VMs which this program should work on.

optional arguments:
  -h, --help            			show this help message and exit
  -l LOCATION, --location location 	Manually set the location of the backups (default: /var/lib/vz/dump)
  --vm VM               			Specify the VM(s) which should be included with this (default: All)
  -d DAYS, --days DAYS  			The number of days backups should be kept (default: None)
  -c COUNT, --count COUNT 			The number of backups that should be kept (default: None)
```