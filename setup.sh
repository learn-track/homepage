#!/bin/bash

handle_error() {
  local exit_code="$?"
  exit "$exit_code"
}

trap 'handle_error' ERR

echo '
      888    888
      888    888
      888    888
      8888888888  .d88b.  88888b.d88b.   .d88b.  88888b.   8888b.   .d88b.   .d88b.
      888    888 d88""88b 888 "888 "88b d8P  Y8b 888 "88b     "88b d88P"88b d8P  Y8b
      888    888 888  888 888  888  888 88888888 888  888 .d888888 888  888 88888888
      888    888 Y88..88P 888  888  888 Y8b.     888 d88P 888  888 Y88b 888 Y8b.
      888    888  "Y88P"  888  888  888  "Y8888  88888P"  "Y888888  "Y88888  "Y8888
                                                 888                    888
                                                 888               Y8b d88P
                                                 888                "Y88P"
'

echo "Hi there! This script will set up your development environment for the learnUP homepage."
read -p "ℹ️ Press Enter to continue..."
echo

pushd ./frontend > /dev/null || exit

echo "⚙️ Installing Node.js"
source "$HOME/.nvm/nvm.sh"
nvm install
echo

echo "⚙️ Enabling Corepack (for Yarn)"
corepack enable
echo

echo "⚙️ Installing Yarn dependencies"
yarn install
echo

popd > /dev/null || exit

echo "🎉 Setup complete, happy hacking!"
echo
