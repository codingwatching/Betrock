dos2unix -r *

chmod +x ./build_appimage.sh
./build_appimage.sh

cpack --config build/CPackConfig.cmake -G TGZ