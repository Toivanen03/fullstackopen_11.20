#!/bin/bash

cd Frontend

echo "Compiling and testing the frontend"

echo "Installing dependencies"
npm install

echo "Checking code style"
npm run lint

echo "Running tests"
npm test

echo "Compiling build"
npm run build

cd ..

cd Backend

echo "Compiling and testing the backend"

echo "Installing dependencies"
npm install

echo "Running tests"
npm test

cd ..