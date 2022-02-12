@echo off
title CMS
color 3
cls
echo ===================================================
echo.
echo            CMS - The Compare - Compact v 1.3
echo.
echo ===================================================

echo.
echo.
echo.
echo We Recommend That You Run CMS.cmd As Administrator for Best Experience.
echo With CMS, you'll be able to see some data that windows hides from you.
echo This process usually don't hurts or damages anything.
echo If you're sure what are you doing, press any key to continue.
echo We recommend that you close all other running apps, like games or things may can affect the process.
ECHO.
echo Session ID: %random% Version: 1.3C
echo Screen may turn black, press Enter 3 times to continue.
pause
cls
TITLE CMS - Processing...
rmdir cms-data /S /Q
mkdir cms-data

VOL >cms-data\drive-sn.txt
VER >cms-data\winver.txt
SC query > cms-data\tasks.txt
Systeminfo > cms-data\systeminfo.txt
BCDEDIT > cms-data\bootdata.txt
TASKLIST > cms-data\tasks2.txt
time > cms-data\time.txt
date > cms-data\date.txt
DRIVERQUERY > cms-data\drivers.txt
set > cms-data\set.txt
ipconfig/all >cms-data\ip.txt
echo %random%-%random%-%random%-%random% >cms-data\token.txt

echo Processing Done
pause
color 7
title CMS - Results
cls
echo Results Are Like This:
echo    File Name       Description               File Size(Usually)
echo =================================================================
echo.
echo.
echo   winver.txt       Shows Windows Version         47 Bytes
echo   drive-sn.txt     Shows Current Drive Info      70 Bytes
echo   tasks.txt        Shows Current Services        48 KB
echo   systeminfo.txt   Shows System Info             5 KB
echo.  bootdata.txt     Shows Boot Data               2 KB
echo   tasks2.txt       Shows Running Tasks           16 KB
echo   time.txt         Shows Time                    59 Bytes
echo   date.txt         Shows Date                    64 Bytes
echo   drivers.txt      Shows All Running Drivers     31 KB
echo   set.txt          Shows environment variables   2 KB
echo.  ip.txt           Shows IP Stuff                8 KB
echo.  token.txt        Saves a file containing your token for cms         90 Bytes
echo.
echo.
echo All data are saved on: this directory / cms-data /
echo We've given you a token that's useless for now, but in future, will add a system to verify tokens and unlock awesome options and tools!
echo We will not gather any data, so CMS is safe.
pause
EXIT