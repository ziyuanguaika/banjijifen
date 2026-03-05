@echo off
chcp 65001 >nul
cd /d D:\nginx\www\test_project

echo.
echo ========================================
echo          版本历史记录
echo ========================================
echo.

git log --oneline --graph --all --decorate

echo.
echo ========================================
echo 说明: 左边的字母数字是版本号
echo       回滚时用这个号码
echo ========================================
echo.
pause
