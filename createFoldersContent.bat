@echo off 

color 2
echo This script only going to create the Automation files and folders.
echo You can always watch our confluance for more info here:
echo https://wiki.devops/display/HI/How+Certificates+Automation+Work
echo Please press enter to start genarate them all in the current file this batch file is. 
pause

echo Your script working directory is %CD%

color 0
md trust
ROBOCOPY "\\popnasru01\install\Elad_Avrahami_Hybrid_Integration\trust" "trust" /mir
::\install\Elad_Avrahami_Hybrid_Integration\trust
:: Z:\new_ca\trust
:: WAYS TO COPY FOLDER FILES TO MY LOCAL FOLDER:
:: https://stackoverflow.com/questions/986447/batch-file-to-copy-files-from-one-folder-to-another-folder

::xcopy /s   d:%CD%\trust
::ROBOCOPY "\\popnasru01\install" "%CD%\trust" /mir


md SecurityCer
mkdir SecurityCer\cerPRD
mkdir SecurityCer\cerTST
md ARM
mkdir ARM\TSTARM
mkdir ARM\PRDARM
md PRD
md TST
BREAK > systemidTST.txt
echo Enter ALL TST systems id under this line,each one in new line>>systemidTST.txt
BREAK > systemidPRD.txt
echo Enter ALL PRD systems id under this line,each one in new line>>systemidPRD.txt

color 2
echo script succesfully ended!
pause
