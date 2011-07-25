# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils games

DESCRIPTION="Counter-Strike 2D is freeware clone of Counter-Strike with some added features in gameplay."
HOMEPAGE="http://www.cs2d.com/"
SRC_URI="http://www.kaa.org.ua/distfiles/cs2d_${PV}_linux.zip
	http://www.kaa.org.ua/distfiles/cs2d_${PV}_win.zip"
LICENSE="freedist"

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="x86? (
		media-libs/openal )
	amd64? (
		app-emulation/emul-linux-x86-sdl
	)"

S="${WORKDIR}"


src_unpack() {
	unpack "cs2d_${PV}_linux.zip"
	unpack "cs2d_${PV}_win.zip"

	# removing windows files
	rm *.exe *.bat
}

src_install() {
	insinto "${GAMES_PREFIX_OPT}/${PN}"
	doins -r * || die

	doicon "${FILESDIR}/cs2d.png"

	make_desktop_entry CounterStrike2D "Counter Strike 2D"
	make_desktop_entry "CounterStrike2D -fullscreen -24bit" "Counter Strike 2D - FULLSCREEN"
	games_make_wrapper CounterStrike2D ./CounterStrike2D ${GAMES_PREFIX_OPT}/${PN} ${GAMES_PREFIX_OPT}/${PN}

	prepgamesdirs

	# OpenAL is default sound driver
	sed -i 's:FreeAudio DirectSound:OpenAL Default:' "${D}/${GAMES_PREFIX_OPT}/${PN}/sys/config.cfg"

	# fixing permissions
	chmod -R g+w "${D}/${GAMES_PREFIX_OPT}/${PN}/maps"
	chmod -R g+w "${D}/${GAMES_PREFIX_OPT}/${PN}/screens"
	chmod -R g+w "${D}/${GAMES_PREFIX_OPT}/${PN}/sys"
	fperms ug+x "${GAMES_PREFIX_OPT}/${PN}/CounterStrike2D"
}
