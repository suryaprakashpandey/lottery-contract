# Lottery Contract

This project is a simple lottery system implemented using a Solidity smart contract. It includes scripts to compile, deploy, and test the contract.
Checkout the deployed contract [here](https://sepolia.etherscan.io/address/0x4E62aF6cEfb311f3de9EBb6B7369f43Fd9Bc93b6).

## Introduction

The Lottery Contract is a smart contract built on Ethereum that facilitates a lottery game where participants enter with a specified amount of cryptocurrency. The contract is managed by an appointed manager who oversees the lottery process. After a designated period, the contract picks a winner randomly from the pool of participants. The selected winner receives all the money collected during the lottery round, and the contract resets, allowing participants to join the next round.

Note - The winner is picked pseudo-randomly, i.e. it is not truly random due to the deterministic nature of blockchain and the impossibility of complete randomness.

## Tech stack used

- **Solidity**: Smart contract language.
- **Node.js**: JavaScript runtime.
- **Ganache**: Local Ethereum blockchain.
- **Truffle HDWallet Provider**: Provider to connect to Ethereum networks.
- **Web3.js**: Library to interact with the Ethereum blockchain.
- **Mocha**: Testing framework.
- **Infura**: Ethereum API to connect to the Ethereum network.

## Getting Started

Follow these steps to set up and run the project.

### Prerequisites

- Node.js and npm installed. You can download them from [Node.js website](https://nodejs.org/).
- Ganache installed. You can download it from [Ganache website](https://www.trufflesuite.com/ganache).
- Infura account and project ID. Sign up at [Infura](https://infura.io/).

### Installation

1. **Clone the repository**
    ```sh
    git clone https://github.com/yourusername/lottery.git
    cd lottery
    ```

2. **Install dependencies**
    ```sh
    npm install
    ```

### Configuration

1. **Update `deploy.js` with your mnemonic and Infura URL**
    ```javascript
    const provider = new HDWalletProvider(
      'YOUR_MNEMONIC_HERE',
      'https://mainnet.infura.io/v3/YOUR_INFURA_PROJECT_ID'
    );
    ```

### Compilation

1. **Compile the Solidity contract**
    ```sh
    node compile.js
    ```

### Deployment

1. **Deploy the contract**
    ```sh
    node deploy.js
    ```

### Testing

1. **Run the tests**
    ```sh
    npm test
    ```

## Project Structure

- **contracts/**: Contains the Solidity contract (`Lottery.sol`).
- **test/**: Contains the test file (`lottery.test.js`).
- **compile.js**: Script to compile the Solidity contract.
- **deploy.js**: Script to deploy the compiled contract to the Ethereum network.
- **package.json**: Manages project dependencies and scripts.

## License

This project is licensed under the MIT License.

---

Now you're ready to participate in the lottery game! Good luck! 🍀
