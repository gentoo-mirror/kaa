# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools

DESCRIPTION="WebRTC audio/video call and conferencing server and web client"
HOMEPAGE="https://www.spreed.me"
SRC_URI="https://github.com/strukturag/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/go
	net-libs/nodejs"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	eautoreconf
	npm install || die
}

src_compile() {
	emake -j1 \
		LDFLAGS=""
}
