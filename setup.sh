#!/bin/bash

echo "Defining project name and repository URLs..."
FRONTEND_REPO_NAME="frontend"
BACKEND_REPO_NAME="backend"
FRONTEND_REPO="git@github.com:Lofai-Inc/chrome_hart-FE.git"
BACKEND_REPO="git@github.com:Lofai-Inc/chrome_hart-BE.git"

git clone "$FRONTEND_REPO" "$FRONTEND_REPO_NAME"
cd "$FRONTEND_REPO_NAME"
npm install
cd ..

git clone "$BACKEND_REPO" "$BACKEND_REPO_NAME"
cd "$BACKEND_REPO_NAME"
npm install
cd ..

mkdir "data"

echo ""
echo "Project setup complete!"
echo "Please start Docker Desktop and then return here to press Enter..."
echo ""

read -n 1 -s -r -p "Press Enter to continue..."

echo ""
echo "Attempting docker-compose..."
echo ""

docker-compose up
