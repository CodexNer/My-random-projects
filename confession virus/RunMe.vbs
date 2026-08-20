Option Explicit
Randomize
Dim i, a, popupMsg, hta
Dim shell, fso, tempFolder, tmpName, tmpPath, scriptPath, folder
Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
scriptPath = WScript.ScriptFullName
folder = fso.GetParentFolderName(WScript.ScriptFullName)

a = MsgBox("Are you connected with Internet?", vbQuestion + vbYesNo, "Caution")
If a = vbNo Then
	MsgBox "Please connect with Internet                   " & vbCrLf & "This program will close"
	WScript.Quit
End If

WScript.Sleep 3000

For i = 1 to 3
	MsgBox "An unexpected error has occurred. " & vbCrLf & "Error code: 0xC0NF355", vbCritical + vbOKOnly + vbDefaultButton1, "Application Error"
Next

a = MsgBox("System has detected corrupted file. " & vbCrLf & "Do you want to restore the file to avoid system damage?", vbExclamation + vbYesNo + vbDefaultButton1, "WARNING!")
If a = vbYes Then
	shell.Popup "Fixing corrupted file... " & vbCrLf & "Do not press any button while we fix the issue. ", 10, "Notice", 64 
	MsgBox "File has successfully restored. ", vbInformation, "Success!"
Else
	shell.Popup "Deleting the corrupted file..." & vbCrLf & "Do not press any button while we attempt to delete the file. ", 10, "Notice", 48
	shell.Run "cmd /c ping 127.0.0.1 -n 3 >nul & del """ & scriptPath & """", 0, False
	WScript.Quit
End If

WScript.Sleep 5000

tempFolder = shell.ExpandEnvironmentStrings("%TEMP%")
tmpName = "popup_" & CStr(Int((Rnd * 1000000))) & ".vbs"
tmpPath = tempFolder & "\" & tmpName
popupMsg = ""
popupMsg = popupMsg & "Randomize" & vbCrLf
popupMsg = popupMsg & "n = Int(Rnd * 10000) + 1               " & vbCrLf
popupMsg = popupMsg & "Set ws = CreateObject(""WScript.Shell"")" & vbCrLf
popupMsg = popupMsg & "ws.Popup ""Code "" & n & ""             "", 5, ""System Alert"", 0" & vbCrLf
Dim ts
Set ts = fso.CreateTextFile(tmpPath, True, False) 
ts.Write popupMsg
ts.Close
Set ts = Nothing
For i = 1 To 10
    shell.Run "wscript.exe """ & tmpPath & """", 1, False
    WScript.Sleep 100 
Next
shell.Run "cmd /c ping 127.0.0.1 -n 2 >nul & del """ & tmpPath & """", 0, False

WScript.Sleep 12000

shell.Popup "Well...                                ", 3, " ", 4096
shell.Popup "There's no really any 'corrupted files'", 6, " ", 4096
shell.Popup "This is just a prank to get your attention.", 7, " ", 4096
shell.Popup "There's something I really want to tell you.", 8, " ", 4096

a = msgBox("Do you want to hear?", vbQuestion + vbYesNo, "?")
If a = vbYes Then
	WScript.Sleep 1000
	shell.Popup "Wonderful...                    ",5," ",4096
	shell.Popup "Truly wonderful...              ",5," ",4096
	shell.Popup "I assume you know Slenderman.   ",5," ",4096
	shell.popup "Collect my pages                ",5," ",4096
	WScript.Sleep 2000
	shell.Popup "Disclaimer : Things gonna get wild :)                              ",5," ",4096
Else 
	WScript.Sleep 1000
	shell.Popup "Oh...                          ",4," ",4096
	shell.Popup "You don't want to listen...?   ",7," ",4096
	shell.Popup "...                            ",5," ",4096
	shell.Run "cmd /c ping 127.0.0.1 -n 3 >nul & del """ & scriptPath & """", 0, False
	WScript.Quit
End If

hta = folder & "\dontrunme.hta"
shell.Run "mshta.exe """ & hta & """"
WScript.Sleep 3000