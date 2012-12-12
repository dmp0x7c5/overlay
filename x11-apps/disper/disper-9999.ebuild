# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit bzr eutils multilib python

EBZR_REPO_URI="lp:disper"
EBZR_PROJECT="disper"

DESCRIPTION="Disper is an on-the-fly display switch utility"
HOMEPAGE="http://willem.engen.nl/projects/disper/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-lang/python"
RDEPEND="${DEPEND}"

S="${WORKDIR}/disper-9999"

src_install() {
	emake DESTDIR="${D}" install || die "make install failed."
	doman "${PN}.1"
	dodoc README
}

