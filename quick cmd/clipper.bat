@echo off
TITLE clipper

call common.bat
call preset.bat

set /p from="from: "
set /p to="to: "

@echo on

ffmpeg ^
-i "%inputPath%%input%" ^
-ss %from% -to %to% ^
-c:v libx265 -tag:v hvc1 -preset %preset% ^
"%outputPath%%output%"
pause