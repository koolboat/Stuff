@echo off

echo ultrafast superfast veryfast faster fast medium (slow) slower veryslow
set /p preset="preset:	"
if not defined preset (
	set preset=slow
)