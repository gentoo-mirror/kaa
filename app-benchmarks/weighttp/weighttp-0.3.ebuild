# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
NO_WAF_LIBDIR="true"
PYTHON_COMPAT=( python2_7 )

inherit waf-utils python-any-r1

DESCRIPTION="Small tool to benchmark webservers"
HOMEPAGE="http://redmine.lighttpd.net/projects/weighttp/wiki"
SRC_URI="http://cgit.lighttpd.net/${PN}.git/snapshot/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/libev"
RDEPEND="${DEPEND}"
