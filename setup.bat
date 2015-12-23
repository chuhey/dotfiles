@echo off
cd /d %~dp0

mklink %HOMEDRIVE%%HOMEPATH%\_vimrc %~dp0.vimrc
mklink %HOMEDRIVE%%HOMEPATH%\_gvimrc %~dp0.gvimrc

dir %HOMEDRIVE%%HOMEPATH%

pause
