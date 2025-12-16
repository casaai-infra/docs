#!/bin/bash
# Script to install and use Node 22 LTS for CasaAI docs

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo "Installing Node.js 22 LTS..."
nvm install 22

echo "Switching to Node.js 22..."
nvm use 22

echo "Verifying Node version..."
node --version

echo "Setup complete! You can now run 'npm run dev' or 'mint dev'"

