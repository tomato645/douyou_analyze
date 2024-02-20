@echo off
setlocal
set folder=%1
set MaxNum=%2
:loop
set count=0
for /f %%A in ('dir /a-d-s-h /b "%folder%" ^| find /v /c ""') do set count=%%A
echo %folder%には%count%個のファイルがあります。
if %count% equ %MaxNum% (
  echo 終了します。
  msg * %folder%のファイル数が%MaxNum%に達しました。
  exit /b
)
timeout /t 5 /nobreak >nul
goto loop
endlocal
