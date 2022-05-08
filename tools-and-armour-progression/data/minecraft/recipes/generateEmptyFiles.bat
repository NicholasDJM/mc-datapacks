::generateEmptyFiles.bat
@echo off
setlocal
set /p question=Generate files in %CD%? This will overwrite files! (Type YES to confirm, anything else to abort) 
if [%question%]==[YES] goto :start
exit /b 1
:start
set loop=1
set variation=1
:loop
	if %loop% EQU 1 set piece=sword
	if %loop% EQU 2 set piece=pickaxe
	if %loop% EQU 3 set piece=axe
	if %loop% EQU 4 set piece=shovel
	if %loop% EQU 5 set piece=hoe
	if %loop% EQU 6 set piece=helmet
	if %loop% EQU 7 set piece=chestplate
	if %loop% EQU 8 set piece=leggings
	if %loop% EQU 9 set piece=boots
	:variation
		if %variation% EQU 1 set material=stone
		if %variation% EQU 2 set material=iron
		if %variation% EQU 3 set material=gold
		if %variation% EQU 4 set material=diamond
		echo {}>%material%_%piece%.json
		if %variation% LSS 4 (
			set /a variation=%variation%+1
			goto :variation
		)
	if %loop% LSS 9 (
		set variation=1
		set /a loop=loop+1
		goto :loop
	)