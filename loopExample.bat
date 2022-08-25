@echo off 

color 3


:: EXAMPLE 1 print 123
::FOR %%A IN (1 2 3) DO echo %%A



::EXAMPLE 2 delte file end txt in spesific folder path 
::FOR /R C:\Users\AP0I6\Desktop\BatchFiles\loopExample %%B IN (*.txt) DO del "%%B"
::pause

::EXAMPLE 2 RANG IS 1 UNTIL 5 (JUMP 1 IN THE MIDDEL)
::FOR /L %%C IN (1,1,5) DO echo %%C 

::EXAMPLE 3 20 to 10 jump -2
::FOR /L %%C IN (20,-2,10) DO echo %%C 


::pause





::delims איך יפריד בין מילים 
::skip = n מס שורות לדלג בתחילת הקובץ
::eol = דילוג על שורות בקובץ שמתחילות בתו מסויים 
::tokens איזה פרטיטם ממוספרים בשורה לקרוא
:: usebackq  לשים פקודות ווינדוס לשנות שם עם רווח  וכו


::for /f "tokens=1 delims= " %%a in ("EXAMPLE.csv") do (
::      echo %%a %%b );

::FOR /F "usebackq skip=2 eol=) tokens=1 delims=-"
::%%D IN ("F.txt") DO echo %%D
::%%E %%F
::pause

::FOR /F "usebackq skip=2 eol=) tokens=1,2,3 delims=-"
::%%G IN ("F.txt") DO @echo %%G %%H %%I
::%%E %%F 
::pause

::same as up example but rang of tokens diffrent 
::FOR /F "usebackq skip=2 eol=) tokens=1-3 delims=-"
::%%G IN ("F.txt") DO @echo %%G %%H %%I
::%%E %%F 
::pause

::same as up example but rang of tokens will execute of everything
::FOR /F "usebackq skip=2 eol=) tokens=* delims=-"
::%%G IN ("F.txt") DO @echo %%G %%H %%I
::%%E %%F 
::pause

::FOR /F "delims=, skip=3 eol=; tokens=1,2,3,4" %%a IN ( persons.txt ) DO  (
::   echo Full Name: %%a %%b   Gender: %%d
::   echo year: %%c
::)
::pause

FOR /F "delims=- skip=2 eol=) tokens=1-3" %%a IN ( F.txt ) DO (
   echo FIRST: %%a SECOND: %%b   THREAD: %%c
)
pause


FOR /F "skip=1 tokens=2" %%a IN ( cool.txt ) DO (
	set SYSTEMID=%%a
	echo %%a
	
)
pause
