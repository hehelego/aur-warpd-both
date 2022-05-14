# Maintainer: hehelego 2364261262@qq.com
# created from /usr/share/pacman/PKGBUILD-vcs.proto
pkgname=warpd-both
pkgver=r149.a60912d
pkgrel=1
pkgdesc="Use rvaiya/warpd in both x11 and wayland"
arch=("x86_64")
url="https://github.com/hehelego/aur-warpd-both"
license=('MIT')
depends=(fish wayland libxkbcommon cairo libxinerama libxft libxfixes libxtst libx11)
makedepends=('git')
provides=("warpd")
conflicts=("warpd")
source=("git+$url")
md5sums=('SKIP')

# fetch upstream
prepare() {
	cd "$srcdir/aur-warpd-both"
	git submodule update --init --recursive
}

pkgver() {
	cd "$srcdir/aur-warpd-both"
# cd into the submodule
	cd "warpd"
# Git, no tags available
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
	cd "$srcdir/aur-warpd-both"
# run the build script
	fish build.fish
}

package() {
	cd "$srcdir/aur-warpd-both"
# cd into the submodule
	cd "warpd"
# install the binary executables
	install -Dm755 -t "${pkgdir}"/usr/bin bin/warpd-x11
	install -Dm755 -t "${pkgdir}"/usr/bin bin/warpd-wayland
# go back to source directory
	cd ../
# install the launcher shell script
	install -Dm755 -t "${pkgdir}"/usr/bin warpd.fish
}
