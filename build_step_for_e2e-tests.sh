#!/bin/bash

echo "Installing Playwright dependencies"
npm ci
npm install --save-dev wait-on

cd Backend

echo "Installing backend dependencies"
npm ci

echo "Starting backend server with pm2"
npx pm2 start npm --name backend -- run start

cd ..

cd Frontend

echo "Installing frontend dependencies"
npm ci

echo "Compiling build"
npm run build

echo "Starting frontend server with pm2"
npx pm2 start npm --name frontend -- run preview -- --port 4173

cd ..

wait