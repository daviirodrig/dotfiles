Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History
Remove-Item alias:cat -Force
Remove-Item alias:ls -Force
function proj { Set-Location D:/Projects }
function which ($c) { Get-Command $c | Select-Object -ExpandProperty Definition }
function yt-mp3 ($c) { youtube-dl --extract-audio --audio-format mp3 $c }
function cat ($c) { bat -pp --paging=never $c }
function ls ($c) { PowerColorLS $c }
# https://github.com/mrpond/BlockTheSpot
function spotify-ad { [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-Expression "& { $(Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/mrpond/BlockTheSpot/master/install.ps1') } -UninstallSpotifyStoreEdition -RemoveAdPlaceholder" }

function new-proj ($name) {
  Set-Location "D:/Projects"
  mkdir $name
  Set-Location $name
  code .
}

function mitm {
  $tmp = Get-Location
  Set-Location "C:\Program Files (x86)\mitmproxy\bin\"
  ./run.ps1 mitmproxy
  Set-Location $tmp
}

function mitmweb {
  $tmp = Get-Location
  Set-Location "C:\Program Files (x86)\mitmproxy\bin\"
  ./run.ps1 mitmweb
  Set-Location $tmp
}

Invoke-Expression (&starship init powershell)
