$env:Path += Convert-Path .\tool\7zip

if (!(Test-Path .\pack)) { mkdir .\pack }

$packDir = Convert-Path .\pack
$scoopDir = Convert-Path ~\scoop

$scoopPack = $(Join-Path $packDir scoop.7z)


# PACKING SCOOP
if (Test-Path $scoopPack) {
    $res = Remove-Item -Confirm $scoopPack
}
if (!(Test-Path $scoopPack)) {
    7z.exe a -bsp1 -bt $scoopPack "$scoopDir\*"
}
