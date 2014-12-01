# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Opkg lightweight package management system"
HOMEPAGE="http://git.yoctoproject.org/cgit/cgit.cgi/opkg/"
SRC_URI="http://downloads.yoctoproject.org/releases/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* ~amd64 ~x86"
IUSE=""

DEPEND="app-crypt/gpgme
	dev-libs/libassuan
	dev-libs/libgpg-error
	dev-libs/openssl
	net-misc/curl
	sys-libs/glibc
	sys-libs/zlib"
RDEPEND="${DEPEND}"
