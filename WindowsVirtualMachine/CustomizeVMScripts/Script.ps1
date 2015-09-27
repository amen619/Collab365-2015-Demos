#
# Script.ps1
#

iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install 7zip -confirm -force

New-Item C:\CreatedFromCse -ItemType Directory -Force

exit 0