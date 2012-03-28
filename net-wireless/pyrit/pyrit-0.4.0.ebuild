# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit distutils eutils

DESCRIPTION="GPU-accelerated attack against WPA-PSK authentication"

HOMEPAGE="http://code.google.com/p/pyrit/"

SRC_URI="http://pyrit.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="~x86 ~amd64"

IUSE="cuda opencl"

DEPEND=">=dev-lang/python-2.5
	dev-libs/openssl
	net-libs/libpcap"

RDEPEND=">=net-analyzer/scapy-2
	opencl? ( net-wireless/cpyrit-opencl )
	cuda? ( net-wireless/cpyrit-cuda )"
