@setlocal enableextensions
@cd /d "%~dp0"

echo "start ourjs"

cd %~dp0

:dowhile

    node ./svr/ourjs.js config.newspaper.js

    ping -n 5 127.0.0.1 >nul
    REM "Server stop working, waiting for restart...\r\n\r\n\r\n\r\n"

goto :dowhile