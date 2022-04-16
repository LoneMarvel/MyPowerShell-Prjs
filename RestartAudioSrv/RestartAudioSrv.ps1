[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
$startOut = [System.Windows.Forms.MessageBox]::Show("Restarting Audio Service","Restart Action Service",1)

if ($startOut -eq 'Cancel'){
    exit
}
else{
    Restart-Service -Force RtkAudioService
    Restart-Service -Force Audiosrv
}

[System.Windows.Forms.MessageBox]::Show("Audio Service Restarted Succesfully","Audio Service Restart",0)