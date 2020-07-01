@ECHO OFF
ECHO.

ECHO Membuat nama keystore
:buatkeystore
keytool -genkey -v -keystore namakeystore.keystore -alias namaAplikasi -keyalg RSA -keysize 2048 -validity 10000
ECHO.

ECHO Sign aplikasi
:singkeystore
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore namakeystore.keystore app-release-unsigned.apk namaAplikasi
ECHO.

ECHO Merilis aplikasi siap upload
:releaseapk
zipalign -v 4 app-release-unsigned.apk jelly-release1.0.0.apk
ECHO.
