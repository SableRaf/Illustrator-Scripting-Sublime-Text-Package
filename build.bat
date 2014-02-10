@echo off 
:: Renaming arguments
set file_name=%1%
set file_path=%2%

:: Change this accordingly to your version/language
set version=CC
set language=en_GB

:: Adobe Illustrator folder location
set base_path=c:\Program Files\Adobe
set ai_folder_path=%base_path%\Adobe Illustrator %version%
set ai_scripts_folder_path=%ai_folder_path%\Presets\%language%\Scripts

cd "%file_path%"

:: Copying script to Scripts folder
copy "%file_name%" "%ai_scripts_folder_path%\%file_name%"

cd "%ai_folder_path%\Support Files"

:: Running script in Illustrator 
:: Not sure about this line 
:: pull requests welcome if you're on Windows
Illustrator -r "%ai_scripts_folder_path%\%file_name%"

:: Printing happy feedback in the console
echo "Successfully compiled %file_name% to %full_path%\%file_name%";