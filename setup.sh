#!/bin/bash

git clone git@github.com:foreign1/lofai-FE.git
cd frontend
npm install

cd ..

git clone git@github.com:foreign1/lofai-BE.git
cd backend
npm install

cd ..

mkdir data

docker compose up
