<h2 align=center>Register a NFT as an IP asset on Story Protocol</h2>

## Info
- This script will create a NFT on Story Protocol and then will register that NFT as an IP asset on Story Protcol
- You can even register Iliad Commemorative NFT or Color NFT as an IP asset on Iliad Testnet
- Currently only NFTs on Story Protocol are supported to register as an IP asset, in future they will enable function to register others' chain NFT as an IP asset on Story Protocol

## Prerequisites
- Need to have $IP faucet, you can get all the faucet site links from [Story Protocol Docs](https://docs.story.foundation/docs/faucet)
- Need to have Linux Based Terminal like [Codespace](https://github.com/codespaces) , [Gitpod](https://gitpod.io) , VPS or WSL
- Pinata JWT token, To get Pinata JWT token, Visit : [Pinata Website](https://pinata.cloud/) , Click on `Get Started` and register using an email address and then follow all the steps mentioned below on the img

![Img1](https://github.com/user-attachments/assets/78878ba8-b8f0-4dff-a133-f9436100e0b1)

## Installation
- You can use either this command
```bash
[ -f "story-ip.sh" ] && rm story-ip.sh; wget -q https://raw.githubusercontent.com/zunxbt/Story-Protocol/refs/heads/main/story-ip.sh && chmod +x story-ip.sh && ./story-ip.sh
```
- Or this command
```bash
[ -f "story-ip.sh" ] && rm story-ip.sh; curl -sO https://raw.githubusercontent.com/zunxbt/Story-Protocol/refs/heads/main/story-ip.sh && chmod +x story-ip.sh && ./story-ip.sh
```
