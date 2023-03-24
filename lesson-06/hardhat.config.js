/** @type import('hardhat/config').HardhatUserConfig */
// module.exports = {
//   solidity: "0.8.18",
// };

require("@nomicfoundation/hardhat-toolbox");
require("@nomiclabs/hardhat-etherscan");

require('dotenv').config();
const { API_URL, PRIVATE_KEY } = process.env;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  networks: {
    bnbTestnet: {
      url: "https://data-seed-prebsc-2-s3.binance.org:8545",
      chainId: 97,
      gasPrice: 20000000000,
      accounts: [PRIVATE_KEY],
    },
    bnbMainnet: {
      url: "https://bsc-dataseed.binance.org/",
      chainId: 56,
      gasPrice: 20000000000,
      accounts: [PRIVATE_KEY],
    },
  },
  etherscan: {
    // Your API key for Etherscan
    // Obtain one at https://bscscan.com/
    apiKey: API_URL,
  },
  solidity: "0.8.18",
};