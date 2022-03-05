Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
function proj {Set-Location D:/Projects}
function which {
	param ($cmd)
	Get-Command $cmd | Select-Object -ExpandProperty Definition
}
function new-proj {
	param (
		$name
	)
	Set-Location "D:/Projects"
	mkdir $name
	cd $name
	code .
}
function spotify-ad {
	# https://github.com/mrpond/BlockTheSpot
	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-Expression "& { $(Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/mrpond/BlockTheSpot/master/install.ps1') } -UninstallSpotifyStoreEdition -RemoveAdPlaceholder"
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
