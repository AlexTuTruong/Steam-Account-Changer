@echo off

TITLE Select Steam account

taskkill.exe /F /IM steam.exe

cls
echo(
echo(
echo(
echo                                      Select your account
echo                            =======================================
echo(
@REM Change strings to desired display username
echo 1) "AccountOne"
echo 2) "AccountTwo"
echo 3) "AccountThree"
echo 4) "AccountFour"
echo(

CHOICE /N /M "Press [1, 2, 3, 4]:" /C 1234 

goto %errorlevel%

@REM Change strings in each label to desired login username
:1
set username="accountOne"
Goto end

:2
set username="accountTwo"
Goto end

:3
set username="accountThree"
Goto end

:4
set username="accountFour"
Goto end

:end
echo.
echo %username% selected
reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f
reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f
start steam://open/main

timeout 4 > NUL

exit
