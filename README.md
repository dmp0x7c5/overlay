==============================
dmp's Gentoo Portage Overlay
==============================

Usage
------------
To use overlay with layman add one line to default */etc/layman/layman.conf*:

```     
overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
            https://raw.github.com/dmp0x7c5/overlay/master/layman.xml
```     

To fetch new list and add dmp's overlay use:

```     
layman -f
layman -a dmp
```     


Ebuilds
------------

**app-mobilephone/obexd** - e-build for obexd version with gobexfuse (OBEX filesystem in userspace).

Don't forget to use **fuse** USE :)

You could mount/unmount gobexfuse using following commands:
```     
gobexfuse /mnt/myphone --target=00:24:EF:08:B6:32
fusermount -u /mnt/myphone
```     

or simpy add new entry to */etc/fstab*:
```
gobexfuse#-t00:24:EF:08:B6:32	/mnt/obex	fuse	user,fsname=gobexfuse#-t00:24:EF:08:B6:32	0 0
```     



