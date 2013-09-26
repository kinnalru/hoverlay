# Copyright 1999-2010 Gentoo Foundation
# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit games eutils cmake-utils git-2

DESCRIPTION="Advanced UrbanTerror launcher program"
HOMEPAGE="http://code.google.com/p/urtconnector/"
#EGIT_REPO_URI="https://kinnalru@code.google.com/p/urtconnector/"
EGIT_REPO_URI="/usr/portage/distfiles/egit-src/urtconnector_/"
EGIT_BRANCH="master"
EGIT_COMMIT="master"


LICENSE="GPL"
KEYWORDS="x86 x64"
SLOT="0"
IUSE=""

RDEPEND="x11-libs/qt-gui:4
    games-util/qstat
    dev-libs/boost
    dev-db/sqlite:3
    "

DEPEND="${RDEPEND}"


src_unpack() {
	git-2_src_unpack
	sed -i s/find_package\(KDE4\)// /usr/mingw32/tmp/portage/games-fps/urtconnector-9999/work/urtconnector-9999/src/preferences/src/CMakeLists.txt
}
