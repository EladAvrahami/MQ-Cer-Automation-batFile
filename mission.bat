@echo off 
color 3

Z:
cd Z:\new_ca
set BASEPATH=Z:\new_ca


::CONSTS PARAMS
set TSTPATH=%BASEPATH%\TST
set ARMPATH=%BASEPATH%\ARM
set trust-folder=%BASEPATH%\trust
set password=password
set OUPRD=Mq Client PRD
set OUTST=Mq Client TST
set O=IBM Tech

:: ================================= trust-file of the company==============
set trust-file1=IBM_CA.cer
set trust-alias1=IBM_CA

set trust-file2=IBM_Root_CA_2021.cer
set trust-alias2=IBM_Root_CA_2021

set trust-file3=IBM_2010_Ro_CA.cer
set trust-alias3=IBM_2010_Ro_CA

set trust-file4=2010_IBM_ca.cer
set trust-alias4=2010_IBM_ca
::==========================================================================

::************************for the first TST systemid start here*********************************
::define SYSTEMID according to TST loop cels 

for /F "skip=1 tokens=1" %%a in ( cool.txt ) do (
set dname="CN=%%a,OU=%OUTST%,O=%O% ,C=IL ,ST=Tel Aviv ,L=TA"
set KEYSTORETST="%TSTPATH% TST_%%a.jks"
set keystore="%TSTPATH%\ TST_%%a.jks"
set alias=TST_%%a
set csr-file= TST_%%a.csr
echo  '-- create TST key'
::del %keystore%
pause
keytool -genkeypair -keystore  %keystore% -storepass "%password%"  -storetype JKS -alias %alias% -keyalg RSA -keysize 2048 -sigalg SHA256withRSA -dname %dname% -keypass "%password%"
echo '-- import BANK ca'
keytool -importcert  -keystore %keystore% -storepass %password% -file "%trust-folder%/%trust-file1%" -alias "%trust-alias1%" -noprompt
:: keytool -importcert -keystore key.jks -storepass changeit -file "trust\Bank Hapoalim 2010 Root CA.cer" -alias 'aa'  -noprompt
keytool -importcert  -keystore %keystore% -storepass %password% -file "%trust-folder%/%trust-file2%" -alias "%trust-alias2%" -noprompt
keytool -importcert  -keystore %keystore% -storepass %password% -file "%trust-folder%/%trust-file3%" -alias "%trust-alias3%" -noprompt
keytool -importcert  -keystore %keystore% -storepass %password% -file "%trust-folder%/%trust-file4%" -alias "%trust-alias4%" -noprompt
CD %BASEPATH%\ARM
echo '-- create csr"
keytool -certreq -keystore %keystore% -storepass %password% -keyalg RSA -alias %alias% -file %csr-file%
)
done

pause
