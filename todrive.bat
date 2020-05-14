@setlocal

set ONEDRIVE=%USERPROFILE%\OneDrive\downloads\myenvmig

xcopy /D /Y /S pack %ONEDRIVE%\pack\ && ^
xcopy /D /Y /S tool %ONEDRIVE%\tool\ && ^
xcopy /D /Y pack.bat %ONEDRIVE% && ^
xcopy /D /Y pack.ps1 %ONEDRIVE% && ^
xcopy /D /Y unpack.bat %ONEDRIVE% && ^
xcopy /D /Y unpack.ps1 %ONEDRIVE%
