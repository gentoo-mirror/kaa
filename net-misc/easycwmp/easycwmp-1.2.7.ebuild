EAPI=5

inherit autotools eutils

DESCRIPTION="freecwmp fork of Mini-XML"
HOMEPAGE="https://github.com/pivasoftware/microxml"
SRC_URI="http://www.easycwmp.org/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND="dev-libs/json-c
	dev-libs/libubox
	dev-libs/microxml
	net-misc/curl
	sys-devel/ubus
	sys-devel/uci
	virtual/libc"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf --enable-jsonc=0
}
