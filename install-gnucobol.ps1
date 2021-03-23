ubuntu2004.exe install
wsl.exe sudo nano /etc/apt/sources.list
wsl.exe sudo apt update 
wsl.exe sudo apt upgrade -y
wsl.exe sudo apt install build-essential libdb-dev ncurses-base ncurses-bin libgmp-dev libncurses5-dev -y
mkdir tmp
Set-Location tmp
wsl.exe wget http://sourceforge.net/projects/open-cobol/files/gnu-cobol/3.1/gnucobol-3.1.2.tar.gz
wsl.exe tar xvf gnucobol-3.1.2.tar.gz
Set-Location gnucobol-3.1.2
wsl.exe ./configure
wsl.exe sudo make
wsl.exe sudo make check 
wsl.exe sudo make install
wsl.exe sudo ldconfig
Clear-Host
wsl.exe cobc --version
Set-Location ..\..\
Remove-Item -Recurse tmp