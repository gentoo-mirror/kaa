# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit distutils eutils

DESCRIPTION="A sub-package that adds CUDA-capability to Pyrit"

HOMEPAGE="http://code.google.com/p/pyrit/"

SRC_URI="http://pyrit.googlecode.com/files/cpyrit-cuda-${PV}.tar.gz"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="~x86 ~amd64"

DEPEND=">=dev-lang/python-2.5
	dev-libs/openssl
	net-libs/libpcap
	dev-util/nvidia-cuda-toolkit"

RDEPEND="${DEPEND}"
