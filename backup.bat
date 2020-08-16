@echo on
f:
cd\

rmdir f:\backup5 /S /Q
mkdir f:\backup5

move f:\backup4\*.* f:\backup5
move f:\backup3\*.* f:\backup4
move f:\backup2\*.* f:\backup3
move f:\backup1\*.* f:\backup2

xcopy /Y /H /E /Q /I c:\progra~1\mysql\mysqls~1.0\data f:\backup1\mysql\data
xcopy /Y /H /E /Q /I c:\progra~1\apache~2\apache2\conf f:\backup1\apache\conf
xcopy /Y /H /Q /I c:\php\*.ini f:\backup1\php\
xcopy /Y /H /Q /I C:\PROGRA~1\stunnel\*.conf f:\backup1\stunnel\
xcopy /Y /H /Q /I c:\progra~1\mysql\mysqls~1.0\my.ini  f:\backup1\mysql\conf\
xcopy /Y /E /Q /I c:\progra~1\apache~2\apache2\htdocs f:\backup1\apache\htdocs /EXCLUDE:c:\backupskip.txt


exit
