This repo hosts files related to my personal home backup system.

Here's an overview of the system:

![backup architecture](https://raw.githubusercontent.com/monsur/backup/main/backup.png)

1. Mobile devices (iPhones) backup via iCloud.
1. The photos/videos from each mobile device are copied to a laptop.
1. The photos/videso folder from one laptop is mirrored to a second laptop.
1. The data from each laptop is backed up to an external hard drive via rsync.
1. Each laptop backs up to Backblaze.

# Details

This backup system is more complicated than available automated options, and I wanted to share my thinking behind it. 

While I use scripts
to copy files, running those scripts requires regular, active maintance. This active
maintance is also a point of failure.

Traditional backup systems put an emphasis on recovery.

Longevity.

There are two primary reasons I'm trying this system out:

 - File Accessibility: I want the files to be accessible over time.
 - Family: I want my children (and their children and their children) to have access to these files someday.

## File Accessibility


## Family

nature of ownership changing. More stuff going online, owning less media, personal photos/videos/creation is what's unique, all while storage is increasing
