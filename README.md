# GnuCOBOL on WSL 2

These scripts are here to automate the installation of Ubuntu on WSL2 and install GnuCOBOL 3.1-rc1 on Windows via WSL.

### Install Instructions
1. Download the repo as ZIP (or clone it)
2. Open Powershell as admin in the repo folder.
3. Execute this command: powershell.exe -executionpolicy bypass -file "install-ubuntu-wsl.ps1"
4. Restart your computer.
5. Open Powershell as admin in the repo folder, again.
6. Execute this command: powershell.exe -executionpolicy bypass -file "install-gnucobol.ps1"
7. Configure your UNIX username and password when asked.
	- (OPTIONAL) Change all archive.ubuntu.com to XX.archive.ubuntu.com (where XX is the local ubuntu server from you country) in the screen and press Ctrl+X to exit and save, confirm with Y.
	- If you don't want to change the download mirrors just press Ctrl-X to skip.

---

TIP: Pay attention and insert your configured UNIX password aways when asked.

TIP: When finished, you can test your instalation by compiling and executing the `test.cbl` (it's a simple calculator) file included by executing
```PowerShell
wsl cobc -x test.cbl
wsl ./test
```
on PowerShell
