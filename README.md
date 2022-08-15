# linux
<h3>linux basic command </h3>
<pre>
clea - clean the command line
pwd - מראה את כתובת העבודה הנוכחית 
 cd - cd Desktop למשל ייכנס לתוך תקייה בנתיב 
</pre>


<h3>   man - Manual מדריך לפקודות  : </h3>
<pre>
man ls יתן לי את כל האופציות בפקודה הזאת 
בדף שייפתח בקומנד ליין 
ננווט כך : 
g - יעלה אותנו הכי למעלה 
G - ייקח אותנו למטה בעמוד 
q - man חזרה לקומנדליין יצא מהעמוד של 

</pre>





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
 
<h3>  (CSR) certificate בקשת החתמת תעודה </h3>
<!-- https://www.golinuxcloud.com/things-to-consider-when-creating-csr-openssl/ -->
<h4>  Certificate Signing Request </h4>

 <pre>
 
 </pre>
