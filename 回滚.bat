@echo off
chcp 65001 >nul
cd /d D:\nginx\www\test_project

echo.
echo ========================================
echo          ⚠️  回滚到历史版本
echo ========================================
echo.
echo 注意: 回滚后当前未保存的修改会丢失！
echo.

echo 最近 10 个版本:
echo.
git log --oneline -10

echo.
set /p commit="请输入要回滚到的版本号（比如最前面的那串字符）: "

if "%commit%"=="" (
    echo.
    echo ❌ 未输入版本号，取消回滚
    pause
    exit /b
)

echo.
echo 即将回滚到版本: %commit%
echo.
set /p confirm="确认回滚？(输入 Y 确认): "

if /i not "%confirm%"=="Y" (
    echo.
    echo ❌ 已取消回滚
    pause
    exit /b
)

echo.
echo 正在回滚...

git reset --hard %commit%

if errorlevel 1 (
    echo.
    echo ❌ 回滚失败！请检查版本号是否正确
    pause
    exit /b
)

echo.
echo ========================================
echo          ✅ 回滚成功！
echo ========================================
echo.
echo 当前版本:
git log --oneline -1
echo.
echo 如需上传到 GitHub，请运行 保存.bat
echo.
pause
