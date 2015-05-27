# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-2


SLOT="0"

DESCRIPTION="Transparent Git Encryption"
HOMEPAGE="http://github.com/kinnalru/gitcrypt"
SRC_URI=""
EGIT_BRANCH="master"
EGIT_REPO_URI="git://github.com/kinnalru/gitcrypt.git"

KEYWORDS="~amd64 ~x86"
LICENSE="GPL-2"

DEPEND="dev-vcs/git dev-libs/openssl"

RDEPEND="${DEPEND}"

src_install() {
  dobin gitcrypt*
}
