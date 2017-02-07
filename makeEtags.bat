::Copyright by Charlie Ding 
::lostinternet@gmail.com
::You can use this file by your wish *_*.
@echo off
set filter=*.h *.cpp *.idl *.c
dir /s/b/a-d %filter% >temp_tag.txt

for /f %%i in (temp_tag.txt) do (
   etags.exe -a  %%i
)
del /Q temp_tag.txt
goto :eof
