Rem Disable printing the commands
@echo off

Rem Clear the screen
cls

Rem This command is used to print something to the screen
echo hi

Rem Get Input from the user
set /p loopVar=Please input a number:

Rem Now we have a variable called loopVar
Rem The value of this variable is set by the user
Rem This is because of the "/p", which prompts the user and get the value

Rem To use the variable, We surround it by %%
echo You entered %loopVar%

Rem Let's increment this variable and print the value
Rem DON'T PUT SPACES BETWEEN THE EQUALITY SIGNS
set /a loopVar=%loopVar% + 1
echo The incremented value is %loopVar%

Rem DON'T PUT SPACES BETWEEN THE EQUALITY SIGNS
if %loopVar%==7 goto handleVariable
goto end

:handleVariable
echo Wow! the incremented value is 7!
Rem Looping over the input number
for /L %%i IN (0,1,%loopVar%) do echo %%i

:end
echo ending the program!
pause


@echo on

