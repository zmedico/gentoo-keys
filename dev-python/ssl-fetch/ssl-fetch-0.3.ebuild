# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/ssl-fetch/ssl-fetch-0.2.ebuild,v 1.1 2014/05/29 16:19:28 dolsen Exp $

EAPI="5"

PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1

DESCRIPTION="A small convinience library for fetching files securely"
HOMEPAGE="https://github.com/dol-sen/ssl-fetch"
SRC_URI="http://dev.gentoo.org/~dolsen/releases/ssl-fetch/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

KEYWORDS="~amd64 ~arm ~hppa ~x86"

DEPEND=""

RDEPEND="${DEPEND}
	>=dev-python/requests-1.2.1[${PYTHON_USEDEP}]
	python_targets_python2_7? (
		dev-python/ndg-httpsclient[python_targets_python2_7]
		dev-python/pyasn1[python_targets_python2_7]
		>=dev-python/pyopenssl-0.13[python_targets_python2_7]
		)
	"

pkg_postinst() {
	einfo
	einfo "This is beta software."
	einfo "The APIs it installs should be considered unstable"
	einfo "and are subject to change in these early versions."
	einfo
	einfo "Please file any enhancement requests, or bugs"
	einfo "at https://github.com/dol-sen/ssl-fetch/issues"
	einfo "I am also on IRC @ #gentoo-portage, #gentoo-keys,... of the freenode network"
	einfo
}