

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


