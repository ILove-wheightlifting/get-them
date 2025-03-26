Do
    Dim userInput
    userInput = InputBox("Enter Password:", "Login Required")

    If userInput = "admin" Then
        WScript.Quit
    Else
        Set objShell = CreateObject("WScript.Shell")
        objShell.Run "shutdown -l", 0, True
    End If
Loop While userInput <> "admin"
