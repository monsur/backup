This repo hosts files related to my personal home backup system.

The overview of the system looks like this:

![backup architecture](https://raw.githubusercontent.com/monsur/backup/main/backup.png)

1. Mobile devices (iPhones) backup via iCloud.
1. The photos/videos from each mobile device are copied to a laptop.
1. The photos/videso folder from one laptop is mirrored to a second laptop.
1. The data from each laptop is backed up to an external hard drive via rsync.
1. Each laptop backs up to Backblaze.

