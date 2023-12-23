@echo off
setlocal enabledelayedexpansion

set "search_programs=RocketLeague.exe BakkesMod.exe"
set "search_directory=C:\"
set "output_batch_file=launcher.bat"

rem Delete the output batch file if it already exists
if exist "%output_batch_file%" del "%output_batch_file%"

for %%p in (%search_programs%) do (
    echo Searching for: %%p
	for /r "%search_directory%" %%f in (%%p) do (
		if exist "%%f" (
			echo Found: %%f
			echo start "" "%%f" >> "%output_batch_file%"
		)
	)
)

endlocal