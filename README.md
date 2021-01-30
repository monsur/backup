This repo hosts files related to my home backup system.

Here's an overview of the system:

![backup architecture](https://raw.githubusercontent.com/monsur/backup/main/backup.png)

1. Mobile devices (iPhones) backup via iCloud.
1. The photos/videos from each mobile device are copied to a laptop.
1. The photos/videos folder from one laptop is mirrored to a second laptop.
1. The data from each laptop is backed up to an external hard drive via rsync.
1. Each laptop backs up to Backblaze.

# Details

This backup system is more complicated than available automated options, and I wanted to share my
thinking behind it.

## Recover vs Longevity

The primary motivation for having a backup system is *recovery*. If your computer fails, you can
recover your data on a new computer.

There is a slightly different but related dimension to backups, which is *longevity*. Longevity
means I want my data to be available for decades and even centuries. I want my children and my
children's children to have access to photos and videos of our family. My parents have physical
photo albums that will last for years; moving to digital has lost that for future generations.

Current backup systems are better suited for recovery rather than longevity. For example, Apple's
Time Machine is a robust backup mechanism. It backs up automatically and keeps file history so I
can retrieve previous versions. But it is also proprietary. You can't just grab a Time Machine drive
and browse its files (even less so if the Time Machine backup is password protected with a password
only I know).

Recovery is also not always exactly how I want to use a backup. For example, when I get a new
computer, I like the idea of starting fresh. I want to copy my previous files, but I don't want to
carry my previous state over.

Furthermore, the computing landscape has changed dramatically over the years. My first computer
filled up with personal files. Scanned tax records, receipts, movies (let's be honest, pirated
movies, thanks to BitTorrent!), music (same), and a lot of stuff.

Most of that stuff lives elsewhere now. It’s far easier to looking something up online than save a
local copy. Most of my docs live in Google Drive. I love unlimited access to music from
Spotify. And it’s far easier to rent or stream the latest movie.

The only content I'm producing is photos and videos. And those are really, *really*
important and irreplaceable.

## This Backup System: Pros & Cons

The backup system I'm experimenting with optimizes for longevity in a few ways. It focuses on backup
up data files, not system state or history. It uses standardized tooling like rsync and avoids
anything proprietary. And it adheres to the
[3-2-1 backup practice](https://www.backblaze.com/blog/the-3-2-1-backup-strategy/) by including
iCloud and Backblaze.

There are a few downsides to this system as well. The first is maintainability. The nice thing about
systems like Time Machine is that they are automated. Once they are configured, I don't have to
think about them again. I include iCloud and Backblaze in this backup system as a hedge against
this, so if there is continued automation in case I don't keep up with the scripts. There may
also be ways to better automate the system over time as I get a feel for what works and what
doesn't.

The second downside is security. Because I want these files to be accessible by my family, I've
avoided any proprietary parts, including passwords. However, I'm ok with this tradeoff since the
most an intruder could retrieve are my photos and videos. As mentioned earlier, most of my 
important documents have moved online (for better or for worse).

So there you have it, that's my backup system circa the beginning of 2021. Let's see how this all
plays out over the year and the years.
