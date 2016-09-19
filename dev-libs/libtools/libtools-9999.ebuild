# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Library with a lot of useful C routines"
HOMEPAGE="https://github.com/Oleh-Kravchenko/libtools"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/libtools.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="mysql uri"

RDEPEND="dev-libs/openssl:*
	mysql? ( virtual/libmysqlclient )
	uri? ( dev-libs/uriparser )"
DEPEND="${RDEPEND}
	app-doc/doxygen"

src_configure() {
	local mycmakeargs=(
		-DWITH_MYSQL="$(usex mysql ON OFF)"
		-DWITH_URIPARSER="$(usex uri ON OFF)"
	)

	cmake-utils_src_configure
}
