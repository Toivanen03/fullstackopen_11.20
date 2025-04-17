#!/bin/bash

echo "Installing Playwright dependencies"
npm ci

cd Backend

echo "Installing backend dependencies"
npm ci

echo "Starting backend server"
npm run start &

cd ..

cd Frontend

echo "Installing frontend dependencies"
npm ci

echo "Compiling build"
npm run build

echo "Starting frontend server"
npm run preview -- --port 4173 &

cd ..