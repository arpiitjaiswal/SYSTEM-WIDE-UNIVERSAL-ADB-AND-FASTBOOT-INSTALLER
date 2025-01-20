@ECHO off
CLS
COLOR C
ECHO Requesting administrative privileges...
CD /D "%~dp0"
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    PING localhost -n 2 >nul
    PowerShell Start-Process '%~0' -Verb RunAs
    EXIT /B
)
@ECHO off
CLS
TITLE SYSTEM-WIDE UNIVERSAL ADB AND FASTBOOT BY ARPIT
COLOR 3
ECHO ###############################################################################
ECHO #                                                                             #
ECHO #             SYSTEM-WIDE UNIVERSAL ADB AND FASTBOOT INSTALLER                #
ECHO #                                                                             #
ECHO #                                VERSION 1.1                                  #
ECHO #                                                                             #
ECHO #                                 BY ARPIT                                    #
ECHO #                                                                             #
ECHO #                 GITHUB - https://github.com/arpiitjaiswal                   #
ECHO #                  TELEGRAM - https://t.me/arpiit_jaiswal                     #
ECHO #                                                                             #
ECHO #              ANDROID DEBUG BRIDGE VERSION 35.0.2 (July 2024)                #
ECHO #                  GOOGLE USB DRIVER VERSION (23 July 2020)                   #
ECHO #                                                                             #
ECHO ###############################################################################
:Q1
ECHO(
SET /P ANSWER=Do you want to install ADB and Fastboot? (Y/N)
 IF /i {%ANSWER%}=={y} (GOTO Q2)
 IF /i {%ANSWER%}=={yes} (GOTO Q2)
 IF /i {%ANSWER%}=={n} (GOTO DRV)
 IF /i {%ANSWER%}=={no} (GOTO DRV)
ECHO(
ECHO Bad answer! Use only Y/N or Yes/No
GOTO Q1
:Q2
ECHO(
SET /P ANSWER=Install ADB system-wide? (Y/N)
 IF /i {%ANSWER%}=={y} (GOTO ADB_S)
 IF /i {%ANSWER%}=={yes} (GOTO ADB_S)
 IF /i {%ANSWER%}=={n} (GOTO ADB_U)
 IF /i {%ANSWER%}=={no} (GOTO ADB_U)
ECHO(
ECHO Bad answer! Use only Y/N or Yes/No
GOTO Q2
:ADB_U
ECHO(
ECHO Installing ADB and Fastboot ... (current user only)
ECHO(
ADB kill-server > NUL 2>&1
SET /a COUNT=0
IF EXIST %WINDIR%\adb.exe DEL %WINDIR%\adb.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\AdbWinApi.dll DEL %WINDIR%\AdbWinApi.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\AdbWinUsbApi.dll DEL %WINDIR%\AdbWinUsbApi.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\fastboot.exe DEL %WINDIR%\fastboot.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\dmtracedump.exe DEL %WINDIR%\dmtracedump.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\etc1tool.exe DEL %WINDIR%\etc1tool.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\hprof-conv.exe DEL %WINDIR%\hprof-conv.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\libwinpthread-1.dll DEL %WINDIR%\libwinpthread-1.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\make_f2fs.exe DEL %WINDIR%\make_f2fs.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\make_f2fs_casefold.exe DEL %WINDIR%\make_f2fs_casefold.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\mke2fs.conf DEL %WINDIR%\mke2fs.conf /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\mke2fs.exe DEL %WINDIR%\mke2fs.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\NOTICE.txt DEL %WINDIR%\NOTICE.txt /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\source.properties DEL %WINDIR%\source.properties /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\sqlite3.exe DEL %WINDIR%\sqlite3.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
XCOPY adb\adb.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\AdbWinApi.dll %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\AdbWinUsbApi.dll %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\fastboot.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\dmtracedump.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\etc1tool.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\hprof-conv.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\libwinpthread-1.dll %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\make_f2fs.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\make_f2fs_casefold.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\mke2fs.conf %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\mke2fs.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\NOTICE.txt %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\source.properties %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\sqlite3.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
ECHO %COUNT% file(s) copied.
:PATH_U
ECHO %PATH% > PATH.TMP
ver > nul
FIND "%USERPROFILE%\adb" PATH.TMP > nul 2>&1
IF %ERRORLEVEL% LSS 1 GOTO DRV
VER | FIND "5.1" > NUL 2>&1
IF %ERRORLEVEL% LSS 1 xp\SETX.exe PATH "%PATH%;%USERPROFILE%\adb" 2>>%USERPROFILE%\Desktop\adb-installer.log && GOTO DRV
SETX PATH "%PATH%;%USERPROFILE%\adb" 2>>%USERPROFILE%\Desktop\adb-installer.log
GOTO DRV
:ADB_S
ECHO(
ECHO Installing ADB and Fastboot ... (system-wide)
ECHO(
ADB kill-server > NUL 2>&1
SET /a COUNT=0
IF EXIST %WINDIR%\adb.exe DEL %WINDIR%\adb.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\AdbWinApi.dll DEL %WINDIR%\AdbWinApi.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\AdbWinUsbApi.dll DEL %WINDIR%\AdbWinUsbApi.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\fastboot.exe DEL %WINDIR%\fastboot.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\dmtracedump.exe DEL %WINDIR%\dmtracedump.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\etc1tool.exe DEL %WINDIR%\etc1tool.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\hprof-conv.exe DEL %WINDIR%\hprof-conv.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\libwinpthread-1.dll DEL %WINDIR%\libwinpthread-1.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\make_f2fs.exe DEL %WINDIR%\make_f2fs.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\make_f2fs_casefold.exe DEL %WINDIR%\make_f2fs_casefold.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\mke2fs.conf DEL %WINDIR%\mke2fs.conf /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\mke2fs.exe DEL %WINDIR%\mke2fs.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\NOTICE.txt DEL %WINDIR%\NOTICE.txt /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\source.properties DEL %WINDIR%\source.properties /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
IF EXIST %WINDIR%\sqlite3.exe DEL %WINDIR%\sqlite3.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log
XCOPY adb\adb.exe %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\AdbWinApi.dll %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\AdbWinUsbApi.dll %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\fastboot.exe %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\dmtracedump.exe %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\etc1tool.exe %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\hprof-conv.exe %USERPROFILE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\libwinpthread-1.dll %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\make_f2fs.exe %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\make_f2fs_casefold.exe %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\mke2fs.conf %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\mke2fs.exe %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\NOTICE.txt %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\source.properties %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
XCOPY adb\sqlite3.exe %SYSTEMDRIVE%\adb\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\adb-installer.log && SET /a COUNT=%COUNT%+1
ECHO %COUNT% file(s) copied.
:PATH_S
ECHO %PATH% > PATH.TMP
ver > nul
FIND "%SYSTEMDRIVE%\adb" PATH.TMP > nul 2>&1
IF %ERRORLEVEL% LSS 1 GOTO DRV
VER | FIND "5.1" > NUL 2>&1
IF %ERRORLEVEL% LSS 1 xp\SETX.exe PATH "%PATH%;%SYSTEMDRIVE%\adb" /m 2>>%USERPROFILE%\Desktop\adb-installer.log && GOTO DRV
SETX PATH "%PATH%;%SYSTEMDRIVE%\adb" /m 2>>%USERPROFILE%\Desktop\adb-installer.log
:DRV
DEL PATH.TMP
ECHO(
SET /P ANSWER=Do you want to install Google device drivers? (Y/N)
 IF /i {%ANSWER%}=={y} (GOTO DRIVER)
 IF /i {%ANSWER%}=={yes} (GOTO DRIVER)
 IF /i {%ANSWER%}=={n} (GOTO FINISH)
 IF /i {%ANSWER%}=={no} (GOTO FINISH)
ECHO Bad answer! Use only Y/N or Yes/No
GOTO DRV
:DRIVER
IF DEFINED programfiles(x86) GOTO x64
:x86
ECHO(
ECHO Installing 32-bit driver ...
ECHO Please continue driver installation ...
PING localhost -n 1 >NUL
START /wait driver\DPInst_x86 /f 2>>%USERPROFILE%\Desktop\adb-installer.log
GOTO FINISH
:x64
ECHO(
ECHO Installing 64-bit driver ...
ECHO Please continue driver installation ...
PING localhost -n 1 >NUL
START /wait driver\DPInst_x64 /f 2>>%USERPROFILE%\Desktop\adb-installer.log
:FINISH
ECHO(
ECHO All done!
CALL :LOG %USERPROFILE%\Desktop\adb-installer.log
:LOG
IF %~z1 == 0 DEL %USERPROFILE%\Desktop\adb-installer.log /f /q > nul 2>&1
PING localhost -n 2 >NUL
EXIT