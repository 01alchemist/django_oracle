@echo off
set DIR=%~dp0
set /a build =< "%DIR%\.build"
set /a build=%build%+1
echo Build:1.%build%

docker build -t tutum.co/01alchemist/django_oracle:1.%build% .
rem docker build -t tutum.co/01alchemist/django_oracle:latest .

echo %build% > %DIR%\.build