@echo off
TITLE gif maker

call common.bat

ffmpeg ^
-i "%inputPath%%input%" ^
-vf palettegen %input%Palette.png