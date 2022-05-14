cd warpd

PLATFORM=x11 make
mv bin/warpd bin/warpd-x11

PLATFORM=wayland make
mv bin/warpd bin/warpd-wayland
