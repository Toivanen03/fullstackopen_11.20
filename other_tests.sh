#!/bin/bash

cd Frontend

echo "Checking code style"
npm run lint

echo "Running tests"
npm test

cd ..

cd Backend

echo "Running tests"
npm test

cd ..