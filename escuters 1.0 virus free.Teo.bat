@echo off
title                  .:ANTIVIRUS PARA USB O CD:.
color a
:start 
echo.
echo.
echo   MOMENTO DE EJECUCION
echo   DIA %date%       HORA %time%
echo.
echo.
echo              =================================================
echo                    ANTIVIRUS PARA USB O CD By DarkWeizer
echo              =================================================
echo.
echo.
set /p unit=  INGRESE LA LETRA DE LA UNIDAD USB A DESINFECTAR.
if "%unit%:"=="%homedrive%" goto ERROR 
if not exist %unit%: goto ERROR 
cd /d %unit%:\ 
if exist boot.ini goto ERROR 
if exist AUTOEXEC.BAT goto ERROR 
if exist NTDETECT.COM goto ERROR 
if exist NTLDR goto ERROR 
if exist Bootfont.bin goto ERROR 
if exist CONFIG.SYS goto ERROR 
if exist IO.SYS goto ERROR 
if exist MSDOS.SYS goto ERROR 
if exist pagefile.sys goto ERROR 
del /ah /f /q *.exe 
del /ah /f /q *.com 
del /a /f /q autorun.inf 
del /ah /f /q *.ini 
md autorun.inf 
attrib +h +r autorun.inf 
%unit%: attrib -h -r -s /s /d 
del /f /q *.lnk 
echo LA UNIDAD %unit% FUE DESINFECTADA EL DIA %date% A LAS HORAS %time% >USB_DESINFECTADO.txt
echo. 
:ERROR 
cls 
echo. 
echo UNIDAD INVALIDA 
echo. 
goto start


