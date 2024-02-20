@echo off
setlocal
set folder_path=%1
set max_num=%2
:loop
set file_count=0
for /f %%A in ('dir /a-d-s-h /b "%folder_path%" ^| find /v /c ""') do set file_count=%%A
echo %folder_path% には %file_count% 個のファイルがあります。
if %file_count% equ %max_num% (
  echo 終了します。
  msg * %folder_path% のファイル数が %max_num% に達しました。
  exit /b
)
timeout /t 5 /nobreak >nul
goto loop
endlocal
