# install fasm, take care, might install x86 binary even on x64 systems
sudo apt-get install fasm

# install raylib dependencies
sudo apt install libasound2-dev mesa-common-dev libx11-dev libxrandr-dev libxi-dev xorg-dev libgl1-mesa-dev libglu1-mesa-dev

git clone https://github.com/raysan5/raylib.git ~/repos/raylib
cd ~/repos/raylib/src/
make PLATFORM=PLATFORM_DESKTOP
sudo make install 
cd -
