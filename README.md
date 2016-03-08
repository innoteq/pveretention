# Proxmox Virtual Environment Backup Retention

![Build Status](https://gitlab.com/mechinn/pveretention/badges/master/build.svg)

To use ssh file transfer for off site backups install paramiko by executing: `pip install paramiko`

```
usage: pveretention [-h] [-l LOCATION] [--vm VM] [-a ARCHIVE] [--ssh HOST]
                    [--user USER] [--port PORT] [--key KEY]
                    [--password PASSWORD] [--hostkey HOSTKEY]
                    (-d DAYS | -c COUNT)

Keep Proxmox Virtual Environment backups based on given retention.
Either keep a number of backups for each VM or keep backups made within the last number of days.
The user can also specify a limited set of VMs which this program should work on.

optional arguments:
	-h, --help            				show this help message and exit
	-l LOCATION, --location LOCATION 	Manually set the location of the backups (default: /var/lib/vz/dump)
	--vm VM               				Specify the VM(s) which should be included with this (default: ['All'])

	-a ARCHIVE, --archive ARCHIVE 		Archive backups to location instead of deleting (default: None)
		--ssh HOST             			Archive backups to ssh host at location defined with --archive (default: None)
			--user USER           		Archive backups to ssh host with user (default: mechinn)
			--port PORT           		Archive backups to ssh host at port (default: 22)
			--key KEY             		Archive backups to ssh host with key auth (default: ~/.ssh/id_rsa)
			--password PASSWORD   		Archive backups to ssh host with password auth (default: None)
			--hostkey HOSTKEY     		Archive backups to ssh host validated with host key (default: None)

	-d DAYS, --days DAYS  				The number of days backups should be kept (default: None)
	-c COUNT, --count COUNT 			The number of backups that should be kept (default: None)
```