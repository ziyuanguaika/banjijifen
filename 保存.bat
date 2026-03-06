@echo off
chcp 65001 >nul
cd /d D:\nginx\www\test_project

echo.
echo ========================================
echo          一键保存到 GitHub
echo ========================================
echo.

set /p msg=请输入本次修改的说明（比如：修复了阅读题）: 

if "%msg%"== (
    set msg=自动提交
)

echo.
echo 正在保存...

git add .
git commit -m "%msg%"
git push

echo.
echo ========================================
echo          保存成功！
echo ========================================
echo.
pause
