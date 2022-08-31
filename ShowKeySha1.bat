@ECHO OFF
ECHO This a spript for to show keystore file details. You need this to see sha1 of the key which is required by google cloud api credentials.
ECHO.
::Get KeyTool.exe Path
ECHO Please enter keytool.exe path. Example: C:\OpenJDK\bin\keytool.exe
set /p KeyToolPath="Keytool.exe Path: "
ECHO.
::Get KeyStore File Path
ECHO Please enter keystore file path. Example: C:\myfile.keystore
set /p KeyStoreFilePath=".keystore Path: "
ECHO.
"%KeyToolPath%" -keystore "%KeyStoreFilePath%" -list -v
ECHO.
PAUSE