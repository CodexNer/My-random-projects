Do
    X = MsgBox("An error has occurred", 2 + 48, "System")

    If X = vbAbort Then
        A = MsgBox("Confirm Abort?", 4 + 32, "System")
        If A = vbYes Then
	MsgBox "Abort Failed",0+16,"Error"
        End If

    ElseIf X = vbRetry Then
        Do
            B = MsgBox("Retry failed", 5 + 16, "System")
            If B <> vbRetry Then
                Exit Do
            End If
        Loop

    ElseIf X = vbIgnore Then
        C = MsgBox("Are you sure?", 1 + 32, "System")
        If C = vbOk Then
            D = MsgBox("...", 1 + 32, " ")
            If D = vbOk Then
                E = MsgBox("...", 1 + 32, " ")
		If E = vbOk Then
		MsgBox "Alright then...",0+64," "
		MsgBox "How was the Virus? :P",0+64,"lol"
		MsgBox "I bet you are fooled lel",0+64,"haha"
		MsgBox "Don't worry, this is a harmless virus :)",0+64,"No Danger"
		MsgBox "Anyway...",0+64,"Surprise :D"
		MsgBox "Enjoy this rick roll >:)",0+48,"Rick Roll Incoming!"
		Set objShell = CreateObject("WScript.Shell")
		objShell.Run "https://youtu.be/5a54TPGz9bI"
		WScript.Quit
            End If
        End If
    End If
End If
Loop


