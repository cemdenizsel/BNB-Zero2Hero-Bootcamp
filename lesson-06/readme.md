# HW 5

## Author

Cem
## Solution

BadgerNFT contract deployed to BNB Testnet at:
`0x0D9B781aEA1F1eA5fC187D74f1835c5c2c312A46`

Contract verified here: https://testnet.bscscan.com/address/0x0D9B781aEA1F1eA5fC187D74f1835c5c2c312A46#code

## Deployment and BSCScan Verification

The following scripts were run to deploy and verify the contract to the BNB testnet:
```
npx hardhat run --network bnbTestnet scripts/deploy.js
npx hardhat verify --network bnbTestnet 0x0D9B781aEA1F1eA5fC187D74f1835c5c2c312A46
```
## Unit Tests
Run the following command to execute the provided unit tests:
`npx hardhat test`