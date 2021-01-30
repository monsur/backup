This repo hosts files related to my home backup system.

Here's an overview of the system:

![backup architecture](https://raw.githubusercontent.com/monsur/backup/main/backup.png)

1. Mobile devices (iPhones) backup via iCloud.
1. The photos/videos from each mobile device are copied to a laptop.
1. The photos/videos folder from one laptop is mirrored to a second laptop.
1. The data from each laptop is backed up to an external hard drive via rsync.
1. Each laptop backs up to Backblaze.

## Recover vs Longevity

This backup system is more complicated than automated backup tools, so I wanted to share my thinking
behind it.

The primary motivation for having a backup system is *recovery*. If your computer fails, you can
recover your data on a new computer.

There is a slightly different but related dimension to backups, which is *longevity*. Longevity
means I want my data to be available for decades and even centuries. I want my children and my
children's children to have access to photos/videos of our family.

Current backup systems tend to be better suited for recovery. For example, Apple's Time Machine is a
robust backup mechanism. It backs up automatically and keeps file history so I can retrieve previous
versions. But it is also proprietary. You can't just grab a Time Machine drive and browse its files
(even less so if the Time Machine backup is password protected with a password only I know).

Full recovery is also not quite what I want. For example, when I get a new computer, I like the idea
of starting fresh. I want to copy my previous files, but I don't want to carry over my previous
state (I have no clue how all the different versions of Python, Ruby, and Node actually work on my
current setup).

Finally, the computing landscape has changed dramatically over the years. My first computer was
filled with personal files. Scanned tax records, receipts, movies (let's be honest, pirated
movies, thanks to BitTorrent!), music (same), and a just a lot of _stuff_.

Most of that stuff lives online now. It’s far easier to Google something than save a local copy for
later. Most of my docs live in Google Drive. I love unlimited access to music from Spotify. And it’s
far easier to rent or stream the latest movie.

## Photos & Videos: What really matter

The only content I'm producing is photos and videos. And those are really, *really* important and
irreplaceable.

Before everyone carried a camera in their pocket, photos were printed and preserved in physical
albums. These albums would provide a curated, accessible (albeit heavy) view of the past.

The move to digital means we're capturing more content than ever before, but at the loss of
accessibility. My photos are only available on my device and backed up to my iCloud account. I wish
all the best for Apple, but I don't know where they will be as a company tens or hundreds of years
from now.

This backup system optimizes for photos and videos. I consolidate all our photos (mostly from our
phones, but sometimes from a DSLR) into a single folder on my laptop, and then sync that folder
with my wife's laptop. That extra syncing serves two purposes: a) it gives my wife quicker access to
our photos, and b) it offers further redundancy for what matters most.

## This Backup System: Pros & Cons

The backup system I'm experimenting with optimizes for longevity in a few ways. It focuses on
backing up data files, not system state or history. It uses standard tooling like rsync and
avoids anything proprietary (assuming file formats like JPEG and HEIC are readable in the future).
And it adheres to the
[3-2-1 backup practice](https://www.backblaze.com/blog/the-3-2-1-backup-strategy/) by including
cloud options like iCloud and Backblaze.

There are a few downsides to this system as well. The first is maintainability. The nice thing about
off-the-shelf backup solutions like Time Machine is that they are automated. Once they are
configured, I don't have to think about them again. I include iCloud and Backblaze in this backup
system as a hedge against this, so there is continued automation in case I don't keep up with
running my backup scripts. I may also find ways to improve the automation in the future, as I get a
better sense of how this backup system works in practice.

The second downside is security. Since I want these files to be accessible by my family, I've
avoided any proprietary pieces, including passwords. I'm ok with this tradeoff since as mentioned
above, most of my important documents have moved online (for better or for worse). The most a thief
would have access to is a lot of photos and videos.

So there you have it, that's my backup system circa the beginning of 2021. Let's see how this all
plays out over the year and the years.
