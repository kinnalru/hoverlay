# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDEBASE="kdevelop"
KMNAME="kdev-ruby"

inherit kde4-base

MY_PN="${KMNAME}"
MY_PV="v${PV}"
MY_P="${MY_PN}-${MY_PV}"

EGIT_REPO_URI="git://anongit.kde.org/kdev-ruby.git"
KEYWORDS=""

DESCRIPTION="Ruby plugin for KDevelop 4"
HOMEPAGE="http://www.kdevelop.org"

LICENSE="GPL-2"
IUSE="debug"

DEPEND="
	>=dev-util/kdevplatform-1.4.60
"
RDEPEND="
	${DEPEND}
	dev-util/kdevelop
"

RESTRICT="test"

src_compile() {
	pushd "${WORKDIR}"/${P}_build > /dev/null
	emake parser
	popd > /dev/null

	kde4-base_src_compile
}
