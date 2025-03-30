@echo off
title yt-dlp archiver

set output=E:\Videos\archived videos\

set /p url="url:	"
for /f "tokens=*" %%a in ("yt-dlp --print '%%(format)s' '%url%'") do set format=%%a
:: I'm sure there's a better way of doing this but I'm lazy so I'm doing the lazy route.

yt-dlp ^
--abort-on-unavailable-fragments ^
--embed-subs --sub-langs all,-live_chat ^
--write-thumbnail --convert-thumbnails "webp>png" --embed-thumbnail ^
--write-description --embed-metadata --embed-info-json ^
--merge-output-format mkv ^
--postprocessor-args "-metadata comment='%format%'" ^
--output "%output%%%(uploader)s\%%(title)s\%%(title)s [%%(id)s]" ^
%url%
pause