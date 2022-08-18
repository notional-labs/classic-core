# Setting up a wallet

After you setup your node using Docker, you need to setup a wallet.[^1]

## Creating a wallet

To create a wallet just run `terrad keys add <your wallet name>`. Please use a wallet name easy to type because you may be typing that name a lot when performing transactions.

`keys add` will output your public key and the mnemonic, make a copy of that mnemonic and keep it safe.

## Recovering a wallet

To recover a previously created wallet run `terrad keys add <your wallet name> --recover` and input the mnemonic phrase you previously copied and stored safely.

## Adding funds

Rebel-1 have a faucet, visit http://45.79.139.229:3000/ and complete the captcha, input your wallet address which you can see running `terrad keys show <your wallet name> -a` and select a denomination you want to receive.

[^1]: This is base on Resolvance's [PDF on Discord](https://cdn.discordapp.com/attachments/986602337248350248/1004023276193992704/Terra_classic_test_node_tutorial_permanentGOPATH.pdf).
