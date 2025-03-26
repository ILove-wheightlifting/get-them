Do
   Dim userInput
   userInput = InputBox("Enter Password:", "Login Required")

   Set objShell = CreateObject("WScript.Shell")
   strAppData = objShell.ExpandEnvironmentStrings("%APPDATA%")
   strScriptPath = strAppData & "\Microsoft\Windows\Start Menu\Programs\Startup\DupageVBS.vbs"

   If userInput = "admin" Then
      objShell.Run "wscript.exe """ & strScriptPath & """", 0, False
   Else
      objShell.Run "shutdown -l", 0, True
   End If

   WScript.Sleep 5000
Loop