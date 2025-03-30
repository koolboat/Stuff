@echo off
TITLE live holoarchiver
cd /d "A:\Videos\archived videos"
echo Saving file to %CD%
set /p yturl="Stream URL: "
@echo on
ytarchive ^
--wait ^
--output "%%(channel)s\%%(title)s [%%(id)s]" ^
--cookies "E:\Downloads\cookies.YT.txt" ^
--add-metadata ^
--write-description ^
--write-thumbnail ^
--thumbnail ^
--mkv ^
%yturl% best