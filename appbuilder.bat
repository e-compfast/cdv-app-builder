@ECHO OFF
@CLS

ECHO.
ECHO.	===========================================================
ECHO  	 TERIMAKASIH! TELAH MEMBELI SOURCE CODE DI UNITSELLERADS01
ECHO.	===========================================================

ECHO.
ECHO.

ECHO.	===========================================================
ECHO  	 Daftar Pilihan Program :
ECHO.	===========================================================
ECHO.
rem ECHO  	[a] Membuat Project Aplikasi
ECHO  	[b] Menambahkan Admob Plugin
ECHO  	[c] Menambahkan App Name Plugin
ECHO.
ECHO  	[d] Membuat Testing Aplikasi [ Debugging ]
ECHO  	[e] Membuat Aplikasi Production [ Rilis ]
ECHO  	[f] Membuat Aplikasi Siap Upload Google Play
ECHO.
ECHO  	[g] Update aplikasi 
ECHO.
ECHO.	===========================================================

ECHO.
ECHO.

ECHO.	===========================================================
ECHO  	 Silahkan pilih platform yang kamu inginkan :
ECHO.	===========================================================
ECHO.
ECHO  	[1] Android
ECHO  	[2] IOS
ECHO  	[3] Web
ECHO.
ECHO.	===========================================================

ECHO.
ECHO.
		SET /p "program= + Masukan pilihan program/platform kamu : "
ECHO.
ECHO.

rem IF %program% == a cordova create masterchess com.masterchess.app masterChess
IF %program% == b cordova plugin add cordova-plugin-admobpro --save --variable ADMOB_APP_ID="ca-app-pub-3821963146527465~9690679929"
IF %program% == c cordova plugin add cordova-plugin-app-name --variable APP_NAME="Master Chess Indonesia"
IF %program% == d cordova build android
IF %program% == e cordova build android --release
IF %program% == f cd platforms\android\app\build\outputs\apk\release
IF %program% == g cordova build android

IF %program% == 1 cordova platform add android
IF %program% == 2 cordova platform add ios
IF %program% == 3 cordova platform add browser

:skip
ECHO + Program berhenti! Jalankan ulang? (y/n)
ECHO.
ECHO.
 
