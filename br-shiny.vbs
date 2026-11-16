Set sh = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
sh.CurrentDirectory = fso.GetParentFolderName(WScript.ScriptFullName)
sh.Run """C:\Program Files\R\R-4.6.0\bin\Rscript.exe"" -e ""shiny::runApp('.', port=3838, launch.browser=FALSE)""", 0, False
WScript.Sleep 6000
sh.Run "cmd /c start chrome http://127.0.0.1:3838", 0, False
