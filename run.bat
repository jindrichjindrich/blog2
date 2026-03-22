@echo off
:: astro based website (testing only for now)
cd %~dp0

set action=%1

if "%action%" == "" set action=help

goto %action%

:project_create
npm create astro@latest
npm install
goto end

:dev
start npm run dev
goto end

:gui
start http://localhost:4321
goto end

:tutorial
start https://docs.astro.build/en/tutorial/0-introduction/
goto end

:github_remote
git remote add origin git@github.com:jindrichjindrich/blog2.git
goto end


:help
echo Usage: run ACTION
echo ACTIONs:
echo   project_create ... npm create astro@latest
echo   dev ... start npm run dev
echo   gui ... start http://localhost:4321
echo   tutorial ... open tutorial web page
echo   github_remote ... add github remote repo
goto end

:end