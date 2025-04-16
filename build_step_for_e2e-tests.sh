#!/bin/bash

echo "Installing Playwright dependencies"
npm ci

cd Frontend

echo "Installing frontend dependencies"
npm ci

cd ..

cd Backend

echo "Installing backend dependencies"
npm ci

cd ..