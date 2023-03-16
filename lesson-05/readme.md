# HW 5

## Author

Cem
## Solution

BadgerCoin token deployed to BNB Testnet at:
`0x14C0759cfF3691E3Bb26E480e4deB30784a899e7`

Contract verified here: https://testnet.bscscan.com/address/0x14C0759cfF3691E3Bb26E480e4deB30784a899e7#code

## Deployment and BSCScan Verification

The following scripts were run to deploy and verify the contract to the BNB testnet:
```
npx hardhat run --network bnbTestnet scripts/deploy.js
npx hardhat verify --network bnbTestnet 0x14C0759cfF3691E3Bb26E480e4deB30784a899e7
```