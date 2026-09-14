@echo off
cd /d C:\sorowan\dapp
echo Installing dependencies...
npm install --legacy-peer-deps
echo.
echo Starting dev server...
npm run dev
pause
