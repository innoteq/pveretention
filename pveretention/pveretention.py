"""

"""
import argparse
from os import walk
from .__about__ import __version__

vzDefault = '/var/lib/vz/dump'


def main():
    parser = argparse.ArgumentParser(description='Keep Proxmox Virtual Environment backups based on given retention')
    parser.add_argument('-v','--version', action='version', version=__version__)
    parser.add_argument('-l','--location', help='Manually set the location of the backups')
    modes = parser.add_mutually_exclusive_group(required=True)
    modes.add_argument('-d','--days', type=int, help='The number of days backups should be kept')
    modes.add_argument('-c','--count', type=int, help='The number of backups that should be kept')

    args = parser.parse_args()
    if args.location is None:
        vzPath = vzDefault
    else:
        vzPath = args.location

    backups = []
    for (dirpath, dirnames, filenames) in walk(vzPath):
        backups.extend(filenames)
        break

