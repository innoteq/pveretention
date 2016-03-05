# Proxmox Virtual Environment Backup Retention

```
usage: pveretention [-h] [-l LOCATION] [--vm VM] (-d DAYS | -c COUNT)

Keep Proxmox Virtual Environment backups based on given retention.
Either keep a number of backups for each VM or keep backups made within the last number of days.
The user can also specify a limited set of VMs which this program should work on.

optional arguments:
  -h, --help                            show this help message and exit
  -l LOCATION, --location LOCATION      Manually set the location of the backups
  --vm VM                               Specify the VM(s) which should be included with this
  -d DAYS, --days DAYS                  The number of days backups should be kept
  -c COUNT, --count COUNT               The number of backups that should be kept
```