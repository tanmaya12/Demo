@Echo off
SET LOGFILE=D:\Selenium\BatchFileCreate\TestLog.log
call :Logit >> %LOGFILE%
exit /b 0
:Logit
cd D:\Selenium\BatchFileCreate
set projectpaths=D:\Selenium\BatchFileCreate
echo %projectpaths%
set classpath=%projectpaths%\bin;%projectpaths%\lib\*
java org.testng.TestNG %projectpaths%\testng.xml
pause
