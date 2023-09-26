@echo off
setlocal enabledelayedexpansion

echo defining project name and repository URLs...
set FRONTEND_REPO_NAME=frontend
set BACKEND_REPO_NAME=backend
set FRONTEND_REPO=git@github.com:Lofai-Inc/chrome_hart-FE.git
set BACKEND_REPO=git@github.com:Lofai-Inc/chrome_hart-BE.git

git clone %FRONTEND_REPO% %FRONTEND_REPO_NAME%
cd %FRONTEND_REPO_NAME%
npm install
cd ..

git clone %BACKEND_REPO% %BACKEND_REPO_NAME%
cd %BACKEND_REPO_NAME%
npm install
cd ..

mkdir data

echo.
echo Project setup complete!
echo Please start Docker Desktop then return here to press enter...
echo.

pause

echo.
echo Attempting docker compose
echo.
docker compose up