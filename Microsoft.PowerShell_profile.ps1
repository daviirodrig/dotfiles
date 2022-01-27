Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
function proj {Set-Location D:/Projects}
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