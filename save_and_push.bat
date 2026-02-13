@echo off
cd /d "%~dp0"
git add -A
git commit -m "Update files"
git push
pause
