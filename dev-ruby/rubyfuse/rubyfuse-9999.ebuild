# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/fusefs/fusefs-0.6.0-r1.ebuild,v 1.5 2012/05/01 18:24:19 armin76 Exp $

EAPI=2
USE_RUBY="ruby18 ruby19"

EGIT_REPO_URI="https://github.com/jmstacey/rubyfuse"

inherit git-2 ruby-ng

IUSE=""
DESCRIPTION="Define file systems right in Ruby - RubyFuse"
HOMEPAGE="https://github.com/jmstacey/rubyfuse"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ppc64 x86"

DEPEND="${DEPEND} >=sys-fs/fuse-2.3"

all_ruby_unpack() {
	git-2_src_unpack
}

each_ruby_configure() {
	${RUBY} setup.rb config --prefix=/usr || die
	${RUBY} setup.rb setup || die
}

each_ruby_install() {
	${RUBY} setup.rb config --prefix="${D}" || die
	${RUBY} setup.rb install || die
}

all_ruby_install() {
	doins -r samples || die
}

