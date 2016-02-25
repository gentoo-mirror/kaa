# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils

DESCRIPTION="The Advanced Prince of Persia Engine - a childhood dream"
HOMEPAGE="http://oitofelix.github.io/mininim/"
SRC_URI="http://oitofelix.github.io/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="media-libs/allegro:5[gtk]"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/fix_install.patch
	eapply_user
}

src_configure() {
	unset LINGUAS
	econf
}

src_install() {
	default
	make_desktop_entry mininim Mininim /usr/share/${PN}/data/icons/${PN}.png
}
