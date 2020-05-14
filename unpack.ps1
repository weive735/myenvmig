$env:Path += Convert-Path .\tool\7zip

$packDir = Convert-Path .\pack
$scoopDir = Join-Path $(Convert-Path ~) \scoop

$scoopPack = $(Join-Path $packDir scoop.7z)
$title = "Overwrite"
$question = "Are you overwrite ~/scoop ?"
$choices = '&Yes', '&No'
if (!(Test-Path $scoopDir) -Or ($($Host.UI.PromptForChoice($title, $question, $choices, 1)) -eq 0)) {
    if (Test-Path $scoopDir) {
        $res = Rename-Item $scoopDir $($scoopDir + ".bk")
        if ($res -ne 0) { exit 1 }
    }
    7z.exe x -o"$scoopDir" $scoopPack
} else {
    write "Cancelled"
    exit 1
}
write Hello!


# PACKING SCOOP
#if (Test-Path $scoopPack) {
#    $res = Remove-Item -Confirm $scoopPack
#}
#if (!(Test-Path $scoopPack)) {
#    7z.exe a -bsp1 -bt $scoopPack $scoopDir
#}

