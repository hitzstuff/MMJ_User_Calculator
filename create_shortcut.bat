@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%cd%\MMJ User Calculator - Shortcut.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.WorkingDirectory = "%cd%\dist" >> %SCRIPT%
echo oLink.IconLocation = "%cd%\dist\calculator_icon.ico" >> %SCRIPT%
echo oLink.TargetPath = "%cd%\dist\mmj_user_calculator.exe" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%