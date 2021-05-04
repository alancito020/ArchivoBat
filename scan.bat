@echo 
cd c:/
cd "Program Files (x86)" 
cd NAPS2
set /p AA=""

naps2.console -o "%USERPROFILE%\Documents\SCnaps\%AA%.pdf" -v -f