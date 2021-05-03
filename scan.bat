@echo 
cd %userprofile%/Documents
dir /B | find /c /i "SCnaps" > nul 2>&1 && (set AR=1) || (set AR=0)
IF %AR% Equ 0 (goto ti) else (goto to)
:ti
md SCnaps2
:end
:to
echo La Carpeta esta creada.
:end
cd c:/
cd "Program Files (x86)" 
dir /B | find /c /i "NAPS2" > nul 2>&1 && (set VAR=1) || (set VAR=0)
IF %VAR% Equ 1 (goto si) else (goto no)
:si
cd NAPS2
naps2.console -o "%USERPROFILE%\Documents\SCnaps\algo.pdf" -v -f
echo termino
pause
goto end
:no
echo No esta instalado NAPS2
pause
goto end