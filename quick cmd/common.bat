@echo off

set /p inputPath="input path:	"
if not defined inputPath (
	set inputPath=E:\Videos\Captures\
	echo E:\Videos\Captures\
) else (
	if not "%inputPath:~-1%"=="\" (
		set "inputPath=%inputPath%\"
	)
)
set /p input="input name:	"

set /p outputPath="output path:	"
if not defined outputPath (
	set outputPath=E:\Videos\Captures\clips\
	echo E:\Videos\Captures\clips\
) else (
	if not "%outputPath:~-1%"=="\" (
		set "outputPath=%outputPath%\"
	)
)
set /p output="output name:	"