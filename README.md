 Batch script + JKS 

TSL & SSL : https://www.internetsociety.org/deploy360/tls/basics/?gclid=EAIaIQobChMI5K714tj_-QIVi41oCR2C_wiuEAAYASAAEgJ7A_D_BwE

<h3>  switch drivers cmd command : </h3>
C:\>Z:

Z:\>cd /d C:

C:\>

<h3>  How To Write a Bash Script That Answers Interactive Prompts</h3>

https://stackoverflow.com/questions/4857702/how-to-provide-password-to-a-command-that-prompts-for-one-in-bash
https://www.baeldung.com/linux/bash-interactive-prompts




# MQ Certificate

<h3>  Environment Variables </h3>
path - 

<h3>  יצירת קובץ עם תוכן הצפנה וביטול הצפנה באמצעות הגדרת סיסמא  </h3>
<!-- https://www.golinuxcloud.com/generate-self-signed-certificate-openssl/  -->
<pre>
C:\Users\AP0I6
λ   echo secret > mypass
C:\Users\AP0I6
λ  openssl enc -aes256 -pbkdf2 -salt -in mypass -out mypass.enc
enc: Unknown cipher pbkdf2
enc: Use -help for summary.
C:\Users\AP0I6
λ  openssl
OpenSSL> enc -aes256 -pbkdf2 -salt -in mypass -out mypass.enc
enc: Unknown cipher pbkdf2
enc: Use -help for summary.
error in enc
OpenSSL> enc -aes256 -salt -in mypass -out mypass.enc
enter aes-256-cbc encryption password:
Verifying - enter aes-256-cbc encryption password:
OpenSSL> q
C:\Users\AP0I6
λ   cat mypass.enc
Salted__¸¯’2\|^ֿsֻאְ£ ײ“♀1‏ƒSל²Qˆ™$SCתˆo~iXkˆ
C:\Users\AP0I6
λ  openssl
OpenSSL> enc -aes256 -salt -d -in mypass.enc
enter aes-256-cbc decryption password:
 ■s e c r e t
  OpenSSL>
 </pre>
 
 
 <h3>  **** genarete new certificate file based on new jks file  (key store) CMD Example *****</h3>
befor start:  make sure you have env variable (%Path%) before starting and downloud ikeyman tool 
<!-- https://www.youtube.com/watch?v=JKzGY-k7Kxs  -->
 <pre>
 C:\Users\AP0I6>keytool -genkey -alias new1 -keyalg RSA -keystore "C:\root\certs\new1.jks"
Enter keystore password:
Re-enter new password:
What is your first and last name?
  [Unknown]:
What is the name of your organizational unit?
  [Unknown]:
What is the name of your organization?
  [Unknown]:
What is the name of your City or Locality?
  [Unknown]:
What is the name of your State or Province?
  [Unknown]:
What is the two-letter country code for this unit?
  [Unknown]:
Is CN=Unknown, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown correct? (type "yes" or "no")
  [no]:  yes

Enter key password for <new1>:
        (RETURN if same as keystore password):

C:\Users\AP0I6>keytool -export -alias new1 -file "C:\root\certs\new1.cer" -keystore "C:\root\certs\new1.jks"
Enter keystore password:
Certificate stored in file <C:\root\certs\new1.cer>

C:\Users\AP0I6>
 </pre>
 
 <h3> How to automate Keystore generation using the java keystore tool : </h3>
 <pre>C:\Users\AP0I6>keytool -list -v -keystore "Z:\TST\opics\jks\opics\TST_opics.jks"  -("jks file position") </pre>
 
 <h3>  **** How to genarete new jks file  (key store)  with personal certificates according to TST/PROD *****</h3>
 <pre>
keytool -genkey -noprompt -alias personalCer1 -dname "CN= systemId , OU= Mq Client PRD , O= IBM ORGNIZATION , L= , S= , C= " -keystore keystore.jks -storepass password -keypass password
 </pre>
 
 
<!--  <h3>  (CSR) certificate בקשת החתמת תעודה </h3> -->
<!-- https://www.golinuxcloud.com/things-to-consider-when-creating-csr-openssl/ -->
<!--<h4>  Certificate Signing Request </h4>-->




 <h3> How to add CA (certificate authrities) to keystore using cmd </h3>
<pre>
C:\Users\AP0I6\Desktop\limor\JKS> keytool -v -import -file "C:\Users\someMorePath\CerNameYouWantToInsert.cer" -alias giveHereAnyName -keystore "C:\Users\AP0I6\Desktop\limor\JKS\keystore.jks"
Enter keystore password:*****
[will show cer details...
...
...
...]
Trust this certificate? [no]:  y
Certificate was added to keystore
[Storing C:\Users\AP0I6\Desktop\limor\JKS\keystore.jks]
</pre>

 <h3> How to add CA (signer Certificate) +automate pass + yes </h3>
<pre>
keytool -v -import -file "C:\Users\AP0I6\Desktop\limor\certificant.cer" -alias cerName  -keystore "C:\Users\AP0I6\Desktop\limor\JKS\keystoreToAddTheCer.jks" -noprompt -storepass password
</pre>

 <h3> How to create arm/csr file  </h3>
 .ARM file is a project file storing protection settings to be applied to the selected file or group of files to prevent their illegal use.
<pre>
keytool -keystore keystore.jks -certreq -alias personalCer1 -keyalg rsa -file personalCer1.arm -storepass password
</pre>


  <h3> How to execute shell command from Java: </h3>
  https: //mkyong.com/java/how-to-execute-shell-command-from-java/
  

   
  <h3>LOOP THROUGH .BAT FILE</h3>
<pre>   
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

pause

echo HELLOOO
pause


FOR /F "usebackq skip=2 eol=) tokens=1 delims=-"
%%D IN ("F.txt") DO echo %%D
::%%E %%F
pause

FOR /F "usebackq skip=2 eol=) tokens=1,2,3 delims=-"
%%G IN ("F.txt") DO @echo %%G %%H %%I
::%%E %%F 
pause

::same as up example but rang of tokens diffrent 
FOR /F "usebackq skip=2 eol=) tokens=1-3 delims=-"
%%G IN ("F.txt") DO @echo %%G %%H %%I
::%%E %%F 
pause

::same as up example but rang of tokens will execute of everything
FOR /F "usebackq skip=2 eol=) tokens=* delims=-"
%%G IN ("F.txt") DO @echo %%G %%H %%I
::%%E %%F 
pause
</pre>   



 <h3> The Script : </h3>
 <pre>
 
 
 
 </pre>

  <!-- https://www.youtube.com/watch?v=_hMKiqEfxNg -->
  
   <!-- https://o7planning.org/11623/batch-loops#a13535018  LOOP IN BASH SCRIPT-->
   <!--   SEARCCH IN GOOGLE :   For (/F) Loop in Batch File Programming    -->
