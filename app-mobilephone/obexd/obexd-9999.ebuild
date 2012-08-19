# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-mobilephone/obexd/obexd-0.46.ebuild,v 1.1 2012/05/20 10:00:02 pacho Exp $

EAPI="4"

EGIT_REPO_URI="git://github.com/dmp0x7c5/gobexfuse.git"

inherit git-2 autotools eutils

DESCRIPTION="OBEX Server and Client with gobexfuse"
HOMEPAGE="http://www.bluez.org/"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~x86"
IUSE="-eds nokia -server usb fuse"

DOCS="AUTHORS ChangeLog README doc/*.txt"

RDEPEND="eds? ( gnome-extra/evolution-data-server )
	!eds? ( dev-libs/libical )
	>=net-wireless/bluez-4.99
	>=dev-libs/openobex-1.4
	>=dev-libs/glib-2.28:2
	>=sys-apps/dbus-1.4
	fuse? ( >=sys-fs/fuse-2.6 )
	server? ( !app-mobilephone/obex-data-server )"

DEPEND="${RDEPEND}
	virtual/pkgconfig
	app-arch/xz-utils"

src_unpack() {
		git-2_src_unpack
		cd "${S}"
		eautoreconf || die "Autoreconf failed"
}

src_configure() {
	econf \
		--disable-debug \
		$(use_with eds phonebook ebook) \
		$(use_enable nokia pcsuite) \
		$(use_enable fuse) \
		$(use_enable server) \
		$(use_enable usb)
}
