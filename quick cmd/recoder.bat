@echo off
TITLE recoder

call common.bat
call preset.bat

@echo on

ffmpeg ^
-i "%inputPath%%input%" ^
-c:v libx265 -tag:v hvc1 -preset %preset% ^
"%outputPath%%output%"
pause