
Add-Type -assembly System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$CurrentDir = Get-Location




function FindRom 
{

    #this thing has an eternal hatred for spaces
    $CheckRom = Test-Path -Path "$CurrentDir/FFIII.NES"

    
    if ($CheckRom -eq $true) {
    MainMenu
    } 
    
    else {
    write "Rom does not exist! `nPlace Chaos Rush 1.1 Translation renamed as `"FFIII.nes`" `nin this directory and try again."
    }
    write $CurrentDir
}




function MainMenu
{
    
    $main_form = New-Object System.Windows.Forms.Form
    $main_form.Text ='FFIII ToolKit'
    $main_form.Width = 500
    $main_form.Height = 400
    $main_form.AutoSize = $true


#region Main menu buttons



    $JPEB = New-Object System.Windows.Forms.Button
    $JPEB.Size = New-Object System.Drawing.Size(100,46)
    $JPEB.Location = New-Object System.Drawing.Size(10,110)
    $JPEB.Text = "Menu Job Palette Editor"
    $JPEB.Add_click({$JPEMW.ShowDialog()})


    $BPEB = New-Object System.Windows.Forms.Button
    $BPEB.Size = New-Object System.Drawing.Size(100,46)
    $BPEB.Location = New-Object System.Drawing.Size(120,110)
    $BPEB.Text = "Battle Palette Editor"
    $BPEB.Add_click({$BPEMW.ShowDialog()})

    $MPEB = New-Object System.Windows.Forms.Button
    $MPEB.Size = New-Object System.Drawing.Size(100,46)
    $MPEB.Location = New-Object System.Drawing.Size(230,110)
    $MPEB.Text = "Menu Palette Editor"
    $MPEB.Add_click({$MPEMW.ShowDialog()})



    #endregion

#region jobpaletteeditor


    
    $JPEMW = New-Object System.Windows.Forms.Form
    $JPEMW.Text ='Menu Palette editor'
    $JPEMW.Width = 400
    $JPEMW.Height = 300
    $JPEMW.AutoSize = $true

    $PalTips = New-Object System.Windows.Forms.label 
    $PalTips.Location = New-Object System.Drawing.Size(120,40)
    $PalTips.Size = New-Object System.Drawing.Size(180,23)
    $PalTips.Text = "Skin         Accent      Main"


    #red onion
    $ROnionKnightPL = New-Object System.Windows.Forms.label 
    $ROnionKnightPL.Location = New-Object System.Drawing.Size(30,60)
    $ROnionKnightPL.Size = New-Object System.Drawing.Size(80,20)
    $ROnionKnightPL.Text = "Red Jobs"

    $ROnionKnightTB1 = New-Object System.Windows.Forms.TextBox
    $ROnionKnightTB1.Location = New-Object System.Drawing.Point(120,58)
    $ROnionKnightTB1.Size = New-Object System.Drawing.Size(35,20)

    $ROnionKnightTB2 = New-Object System.Windows.Forms.TextBox
    $ROnionKnightTB2.Location = New-Object System.Drawing.Point(170,58)
    $ROnionKnightTB2.Size = New-Object System.Drawing.Size(35,20)

    $ROnionKnightTB3 = New-Object System.Windows.Forms.TextBox
    $ROnionKnightTB3.Location = New-Object System.Drawing.Point(220,58)
    $ROnionKnightTB3.Size = New-Object System.Drawing.Size(35,20)

    $ROnionKnightB = New-Object System.Windows.Forms.Button
    $ROnionKnightB.Size = New-Object System.Drawing.Size(50,20)
    $ROnionKnightB.Location = New-Object System.Drawing.Size(270,58)
    $ROnionKnightB.Text = "Import"
    $ROnionKnightB.Add_click({ImportROK})


    #blueonion
    $BOnionKnightPL = New-Object System.Windows.Forms.label 
    $BOnionKnightPL.Location = New-Object System.Drawing.Size(30,85)
    $BOnionKnightPL.Size = New-Object System.Drawing.Size(80,20)
    $BOnionKnightPL.Text = "Blue Jobs"

    $BOnionKnightTB1 = New-Object System.Windows.Forms.TextBox
    $BOnionKnightTB1.Location = New-Object System.Drawing.Point(120,83)
    $BOnionKnightTB1.Size = New-Object System.Drawing.Size(35,20)

    $BOnionKnightTB2 = New-Object System.Windows.Forms.TextBox
    $BOnionKnightTB2.Location = New-Object System.Drawing.Point(170,83)
    $BOnionKnightTB2.Size = New-Object System.Drawing.Size(35,20)

    $BOnionKnightTB3 = New-Object System.Windows.Forms.TextBox
    $BOnionKnightTB3.Location = New-Object System.Drawing.Point(220,83)
    $BOnionKnightTB3.Size = New-Object System.Drawing.Size(35,20)

    $BOnionKnightB = New-Object System.Windows.Forms.Button
    $BOnionKnightB.Size = New-Object System.Drawing.Size(50,20)
    $BOnionKnightB.Location = New-Object System.Drawing.Size(270,83)
    $BOnionKnightB.Text = "Import"
    $BOnionKnightB.Add_click({ImportBOK})



    #Greenonion
    $GOnionKnightPL = New-Object System.Windows.Forms.label 
    $GOnionKnightPL.Location = New-Object System.Drawing.Size(30,110)
    $GOnionKnightPL.Size = New-Object System.Drawing.Size(80,20)
    $GOnionKnightPL.Text = "Green Jobs"

    $GOnionKnightTB1 = New-Object System.Windows.Forms.TextBox
    $GOnionKnightTB1.Location = New-Object System.Drawing.Point(120,108)
    $GOnionKnightTB1.Size = New-Object System.Drawing.Size(35,20)

    $GOnionKnightTB2 = New-Object System.Windows.Forms.TextBox
    $GOnionKnightTB2.Location = New-Object System.Drawing.Point(170,108)
    $GOnionKnightTB2.Size = New-Object System.Drawing.Size(35,20)

    $GOnionKnightTB3 = New-Object System.Windows.Forms.TextBox
    $GOnionKnightTB3.Location = New-Object System.Drawing.Point(220,108)
    $GOnionKnightTB3.Size = New-Object System.Drawing.Size(35,20)

    $GOnionKnightB = New-Object System.Windows.Forms.Button
    $GOnionKnightB.Size = New-Object System.Drawing.Size(50,20)
    $GOnionKnightB.Location = New-Object System.Drawing.Size(270,108)
    $GOnionKnightB.Text = "Import"
    $GOnionKnightB.Add_click({ImportGOK})

$palimg = (get-item "$CurrentDir/assets/savtool.png")
$palimg = [System.Drawing.Image]::Fromfile($palimg)

$savtool = new-object Windows.Forms.PictureBox
$savtool.Image = $palimg
$savtool.SizeMode = "Autosize"
$savtool.location = New-Object System.Drawing.Point(0,130)






#endregion jobpaletteeditor

#region BattlePalleteEditor



    $BPEMW = New-Object System.Windows.Forms.Form
    $BPEMW.Text ='Battle Palette Editor WiP'
    $BPEMW.Width = 500
    $BPEMW.Height = 400
    $BPEMW.AutoSize = $true




    #endregion


#region MenuPaleditor


    $MPEMW = New-Object System.Windows.Forms.Form
    $MPEMW.Text ='Menu Palette Editor'
    $MPEMW.Width = 300
    $MPEMW.Height = 200
    $MPEMW.AutoSize = $true 


    $MPEMCL = New-Object System.Windows.Forms.label 
    $MPEMCL.Location = New-Object System.Drawing.Size(30,42)
    $MPEMCL.Size = New-Object System.Drawing.Size(80,32)
    $MPEMCL.Text = "Menu Color"

    $MPEMTIP = New-Object System.Windows.Forms.label 
    $MPEMTIP.Location = New-Object System.Drawing.Size(120,25)
    $MPEMTIP.Size = New-Object System.Drawing.Size(200,32)
    $MPEMTIP.Text = "Clear      Shading     Main      White"
     

    $MPEMIMPORT = New-Object System.Windows.Forms.Button
    $MPEMIMPORT.Size = New-Object System.Drawing.Size(50,23)
    $MPEMIMPORT.Location = New-Object System.Drawing.Size(320,38)
    $MPEMIMPORT.Text = "Import"
    $MPEMIMPORT.Add_click({ImportCMP})


    $MenuPalT = New-Object System.Windows.Forms.TextBox
    $MenuPalT.Location = New-Object System.Drawing.Point(120,40)
    $MenuPalT.Size = New-Object System.Drawing.Size(35,20)

    $MenuPal1 = New-Object System.Windows.Forms.TextBox
    $MenuPal1.Location = New-Object System.Drawing.Point(170,40)
    $MenuPal1.Size = New-Object System.Drawing.Size(35,20)

    $MenuPal2 = New-Object System.Windows.Forms.TextBox
    $MenuPal2.Location = New-Object System.Drawing.Point(220,40)
    $MenuPal2.Size = New-Object System.Drawing.Size(35,20)

    $MenuPal3 = New-Object System.Windows.Forms.TextBox
    $MenuPal3.Location = New-Object System.Drawing.Point(270,40)
    $MenuPal3.Size = New-Object System.Drawing.Size(35,20)

    $savtoolme = new-object Windows.Forms.PictureBox
    $savtoolme.Image = $palimg
    $savtoolme.SizeMode = "Autosize"
    $savtoolme.location = New-Object System.Drawing.Point(0,80)




#endregion 



#region Adding controls to windows 


    #Add the buttons to main form
    $main_form.Controls.Add($JPEB)
    # $main_form.Controls.Add($BPEB)
    $main_form.Controls.Add($MPEB)


    #Job Palette Editor
    
    $JPEMW.Controls.Add($ROnionKnightPL)
    $JPEMW.Controls.Add($ROnionKnightTB1)
    $JPEMW.Controls.Add($ROnionKnightTB2)
    $JPEMW.Controls.Add($ROnionKnightTB3)
    $JPEMW.Controls.Add($ROnionKnightB)

    $JPEMW.Controls.Add($BOnionKnightPL)
    $JPEMW.Controls.Add($BOnionKnightTB1)
    $JPEMW.Controls.Add($BOnionKnightTB2)
    $JPEMW.Controls.Add($BOnionKnightTB3)
    $JPEMW.Controls.Add($BOnionKnightB)

    $JPEMW.Controls.Add($GOnionKnightPL)
    $JPEMW.Controls.Add($GOnionKnightTB1)
    $JPEMW.Controls.Add($GOnionKnightTB2)
    $JPEMW.Controls.Add($GOnionKnightTB3)
    $JPEMW.Controls.Add($GOnionKnightB)    
    $JPEMW.Controls.Add($Savtool)
    $JPEMW.Controls.Add($PalTips)


    #Menu palette editor

    $MPEMW.Controls.Add($MenuPalT)
    $MPEMW.Controls.Add($MenuPal1)
    $MPEMW.Controls.Add($MenuPal2)
    $MPEMW.Controls.Add($MenuPal3)
    $MPEMW.Controls.Add($Savtoolme)
    $MPEMW.Controls.Add($MPEMCL)
    $MPEMW.Controls.Add($MPEMTIP)
    $MPEMW.Controls.Add($MPEMIMPORT)


    #keep me at bottom
    $main_form.ShowDialog()
    #endregion 

}



function ImportROK {
    
    $RedPal1 = $ROnionKnightTB1.Text
    $RedPal2 = $ROnionKnightTB2.Text
    $RedPal3 = $ROnionKnightTB3.Text

    $Rok1 = [convert]::toint32($RedPal1,16) 
    $Rok2 = [convert]::toint32($RedPal2,16) 
    $Rok3 = [convert]::toint32($RedPal3,16) 


    $bytes  = [System.IO.File]::ReadAllBytes("$CurrentDir/FFIII.NES")
    $offset = 0x07E1DD

    #07E1DD is transparent

    #07E1DD             # Skin
    $bytes[$offset]   = $Rok1

    #07E1DE             # Accent
    $bytes[$offset+1] = $Rok2

    #07E1DF             # Main
    $bytes[$offset+2] = $Rok3

[System.IO.File]::WriteAllbytes("$CurrentDir/FFIII.NES", $bytes)
}

function ImportBOK {
    
    $BluePal1 = $BOnionKnightTB1.Text
    $BluePal2 = $BOnionKnightTB2.Text
    $BluePal3 = $BOnionKnightTB3.Text

    $Bok1 = [convert]::toint32($BluePal1,16) 
    $Bok2 = [convert]::toint32($BluePal2,16) 
    $Bok3 = [convert]::toint32($BluePal3,16) 


    $bytes  = [System.IO.File]::ReadAllBytes("$CurrentDir/FFIII.NES")
    $offset = 0x07E1E1

    #07E1E0 is transparent

    #07E1E1             # Skin
    $bytes[$offset]   = $Bok1

    #07E1E2             # Accent
    $bytes[$offset+1] = $Bok2

    #07E1E3             # Main
    $bytes[$offset+2] = $Bok3

[System.IO.File]::WriteAllbytes("$CurrentDir/FFIII.NES", $bytes)
}

function ImportGOK {
    
    $GreenPal1 = $GOnionKnightTB1.Text
    $GreenPal2 = $GOnionKnightTB2.Text
    $GreenPal3 = $GOnionKnightTB3.Text

    $Gok1 = [convert]::toint32($GreenPal1,16) 
    $Gok2 = [convert]::toint32($GreenPal2,16) 
    $Gok3 = [convert]::toint32($GreenPal3,16) 


    $bytes  = [System.IO.File]::ReadAllBytes("$CurrentDir/FFIII.NES")
    $offset = 0x07E1E5

    #07E1E4 is transparent

    #07E1E5             # Skin
    $bytes[$offset]   = $Gok1

    #07E1E6             # Accent
    $bytes[$offset+1] = $Gok2

    #07E1E7             # Main
    $bytes[$offset+2] = $Gok3

[System.IO.File]::WriteAllbytes("$CurrentDir/FFIII.NES", $bytes)
}

function ImportCMP 
{
    $MPTrans = $MenuPalT.Text
    $MPT1 = $MenuPal1.Text
    $MPT2 = $MenuPal2.Text
    $MPT3 = $MenuPal3.Text

    $CMPT = [convert]::toint32($MPTrans,16)
    $CMP1 = [convert]::toint32($MPT1,16)
    $CMP2 = [convert]::toint32($MPT2,16)
    $CMP3 = [convert]::toint32($MPT3,16)

    $bytes  = [System.IO.File]::ReadAllBytes("$CurrentDir/FFIII.NES")
    $offset = 0x07E1D8

    #transparent
    $bytes[$offset]   = $CMPT

    #Gray
    $bytes[$offset+1]   = $CMP1

    #Blue
    $bytes[$offset+2]   = $CMP2

    #White
    $bytes[$offset+3]   = $CMP3

    #HP Glitch
    $bytes[$offset-10]   = $CMP2


    [System.IO.File]::WriteAllbytes("$CurrentDir/FFIII.NES", $bytes)

}


#debugger below
<# 
    $debugr = New-Object System.Windows.Forms.Form
    $debugr.Text ="Debugger"
    $debugr.Width = 200
    $debugr.Height = 200
    $debugr.AutoSize = $true

    $debugrl = New-Object System.Windows.Forms.label 
    $debugrl.Location = New-Object System.Drawing.Size(10,10)
    $debugrl.Size = New-Object System.Drawing.Size(190,190)
    $debugrl.Text = "Variables"

    $debugr.Controls.Add($debugrl)
    $debugr.ShowDialog()

#>

Findrom