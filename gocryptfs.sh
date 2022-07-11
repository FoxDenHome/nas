#!/bin/sh

umount /mnt/gocryptfs/nas
gocryptfs --reverse --passfile /mnt/keydisk/gocryptfs-icefox /mnt/zhdd/nas /mnt/gocryptfs/nas

rsync -avogXAE --progress /mnt/gocryptfs/nas/ nas@icefox.doridian.net:/mnt/zhdd/nas/share/

umount /mnt/gocryptfs/nas