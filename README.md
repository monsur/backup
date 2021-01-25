This repo hosts files related to my personal home backup system.

The overview of the system looks like this:

![backup architecture](https://raw.githubusercontent.com/monsur/backup/main/backup.png)

1. Mobile devices (iPhones) backup via iCloud.
1. The photos/videos from each mobile device are copied to a laptop.
1. The photos/videso folder from one laptop is mirrored to a second laptop.
1. The data from each laptop is backed up to an external hard drive via rsync.
1. Each laptop backs up to Backblaze.

# Details

This backup system is a bit more complicated than more automated options. While I use scripts
to copy files, running those scripts requires regular, active maintance. This active
maintance is also a point of failure.

Traditional backup systems put an emphasis on recovery.

Longevity.

There are two primary reasons I'm trying this system out:

 - File Accessibility: I want the files to be accessible over time.
 - Family: I want my children (and their children and their children) to have access to these files someday.

## File Accessibility


## Family
