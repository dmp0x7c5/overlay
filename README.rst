==============================
dmp's Gentoo Portage Overlay
==============================

Usage
------------
To use overlay with layman add one line to default */etc/layman/layman.conf*:
        
  overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
        https://raw.github.com/dmp0x7c5/overlay/master/layman.xml

To fetch new list and add dmp's overlay use:

  layman -f
  layman -a dmp


Ebuilds
------------

**app-mobilephone/obexd** - e-build for obexd version with gobexfuse (OBEX filesystem in userspace).



