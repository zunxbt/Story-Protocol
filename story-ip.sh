#!/bin/bash

curl -s https://raw.githubusercontent.com/zunxbt/logo/main/logo.sh | bash
sleep 3

show() {
    echo
    echo -e "\e[1;34m$1\e[0m"
    echo
}

if ! [ -x "$(command -v git)" ]; then
    show "Git is not installed. Installing git..."
    sudo apt-get update && sudo apt-get install git -y
else
    show "Git is already installed."
fi

show "Installing npm..."
source <(wget -O - https://raw.githubusercontent.com/zunxbt/installation/main/node.sh)

if [ -d "Story-Protocol" ]; then
    show "Removing existing Story directory..."
    rm -rf Story-Protocol
fi

show "Cloning Story repository..."
git clone https://github.com/zunxbt/Story-Protocol.git && cd Story-Protocol

show "Installing npm dependencies..."
npm install
echo

read -p "Enter your wallet private key: " WALLET
read -p "Enter Pinata JWT token: " JWT


cat <<EOF > .env
WALLET_PRIVATE_KEY=$WALLET
PINATA_JWT=$JWT
EOF


show "Running npm script to create SPG collection..."
npm run create-spg-collection
echo

read -p "Enter NFT contract address: " CONTRACT
echo

echo "NFT_CONTRACT_ADDRESS=$CONTRACT" >> .env

show "Running npm script for metadata..."
npm run metadata
echo
