﻿Gentoo hoverlay
========

Home gentoo overlay with some custom packages

Add this to /etc/layman/layman.conf

	overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
	            http://github.com/kinnalru/hoverlay/raw/master/overlay.xml


Package Tree
------------

Generated by app-text/tree: `tree -dnv -I 'licenses|profiles|Documentation|metadata' -L 2 --noreport | sed s/^/\\t/`

        .
        ├── dev-util
        │   └── gitcrypt
        ├── games-fps
        │   └── urtconnector
        └── x11-misc
            └── outwiker
