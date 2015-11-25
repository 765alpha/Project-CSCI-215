

Dim document : Set document = WScript.GetObject("https://i.imgur.com/ksQ205m.jpg") 
 While document.readyState <> "complete" : WScript.Sleep 200 : Wend 
 Dim xhr : Set xhr = CreateObject("MSXML2.XMLHTTP.3.0") 
 xhr.open "GET", document.getElementsByTagName("img")(0).src, False 
 xhr.send 
 Dim stream : Set stream = CreateObject("Adodb.Stream") 
 stream.Type = 1 
 stream.Open 
 stream.Write xhr.responseBody 
 stream.SaveToFile "C:\temp\wallpaper.bmp", 2 
 stream.Close
 
 REM http://www.visualbasicscript.com/Script-to-download-an-image-created-by-a-webpage-that-is-a-CGI-script-m103886.aspx
 REM credit for the piece of code that grabs the image off the net

Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Desktop\Wallpaper","C:\temp\wallpaper.bmp","REG_SZ"
WshShell.RegWrite"HKEY_CURRENT_USER\Control Panel\Desktop\WallpaperStyle","0","REG_SZ"
wscript.echo "Restart computer for change to complete."

REM http://www.tek-tips.com/viewthread.cfm?qid=1171737
REM credit for the code to set the wallpaper

dim curDir
curDir = WScript.ScriptFullName

REM http://stackoverflow.com/questions/16138831/getting-current-directory-in-vbscript
REM path of the script

Const ssfSTARTUP = &H7

Set oShell = CreateObject("Shell.Application")
Set startupFolder = oShell.NameSpace(ssfSTARTUP)

REM http://stackoverflow.com/questions/3525462/how-to-retrieve-startup-folder-location-in-64-bit-windows
REM finding the path of the startup folder

dim filesys 
set filesys=CreateObject("Scripting.FileSystemObject") 
If filesys.FileExists(curDir) Then 
filesys.MoveFile curDir, startupFolder.Self.Path & "\"
End If 

REM http://www.devguru.com/technologies/vbscript/14073
REM moving the script to the startup folder
