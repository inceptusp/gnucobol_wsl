ubuntu.exe install
wsl.exe sudo nano /etc/apt/sources.list
wsl.exe sudo apt update && sudo apt upgrade -y
wsl.exe sudo apt install build-essential libdb-dev ncurses-base ncurses-bin libgmp-dev libncurses5-dev -y
mkdir tmp
cd tmp
wsl.exe wget http://sourceforge.net/projects/open-cobol/files/gnu-cobol/3.1/gnucobol-3.1-rc1.tar.gz
wsl.exe tar xvf gnucobol-3.1-rc1.tar.gz
cd gnucobol-3.1-rc1
wsl.exe ./configure
wsl.exe sudo make
wsl.exe sudo make check && sudo make install
wsl.exe sudo ldconfig
cls
wsl.exe cobc --version
cd ..\..\
del -Recurse tmp