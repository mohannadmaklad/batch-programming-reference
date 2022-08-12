Rem Disable printing the commands
@echo OFF

Rem Clear the screen
cls

Rem write something to a file
echo Hello world > first_text_file.txt

Rem Append something to the file
echo Goodbye World >> first_text_file.txt

Rem Read the file line by line
Rem /f flag will read the file line by line
Rem "delims" option parameter will specify the delimiters, similar to the split command
for /f "delims=" %%i in (first_text_file.txt) do echo Line: %%i
pause

Rem Print new line (Equivalent to \n in C)
echo:

Rem Loop through all files in the current directory
for %%y in (*.*) do echo %%y

Rem Loop through all files in a specific directory
Rem You can use /r flag to print the files recursively
set TARGET_DIRECTORY="c:\.\*"
for %%y in (%TARGET_DIRECTORY%) do echo %%y

pause