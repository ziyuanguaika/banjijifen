@echo off
cd /d D:\nginx\www\test_project

echo.
echo ===============================
echo     Save to GitHub
echo ===============================
echo.

set /p msg=Commit message:

if "%msg%"=="" set msg=Update

echo.
echo Saving...

git add .
git commit -m "%msg%"
git push

echo.
echo ===============================
echo     Done!
echo ===============================
echo.
pause
