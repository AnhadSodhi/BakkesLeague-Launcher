@echo off
setlocal enabledelayedexpansion

set "search_programs=RocketLeague.exe BakkesMod.exe"
set "output_batch_file=launcher.bat"
set "drive_letters=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"

rem Delete the output batch file if it already exists
if exist "%output_batch_file%" (
	del "%output_batch_file%"
	echo old launcher.bat deleted.
)

rem Iterate through all programs
for %%p in (%search_programs%) do (
	echo Searching for: %%p
	
	rem Iterate through all drives
	for %%d in (%drive_letters%) do (
		set "search_directory=%%d:\"
		
		rem Use dir /s /b to recursively search for the program path
		for /f "tokens=*" %%f in ('dir /s /b "!search_directory!%%p" 2^>nul') do (
			echo Found: %%f
			echo start "" "%%f" >> "%output_batch_file%"
		)
	)
)
echo new launcher.bat file created. You may need to refresh the folder to make it appear.

endlocal
pause