# GnuCOBOL on WSL 2

These scripts are here to automate the installation of GnuCOBOL 3.1.2 on Windows via WSL.

### Install Instructions
1. Clone the repo
2. Install WSL and Ubuntu following the instructions in https://docs.microsoft.com/en-us/windows/wsl/install-win10
3. Open Powershell as admin in the repo folder
4. Execute this command: powershell.exe -executionpolicy bypass -file "install-gnucobol.ps1"
5. Configure your UNIX username and password, if asked.
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
