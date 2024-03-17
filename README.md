# Lottery Contract

This project contains a smart contract for a lottery game on the Ethereum blockchain using Solidity.
Checkout the deployed contract [here](https://sepolia.etherscan.io/address/0x4E62aF6cEfb311f3de9EBb6B7369f43Fd9Bc93b6).

## Introduction

The Lottery Contract is a smart contract built on Ethereum that facilitates a lottery game where participants enter with a specified amount of cryptocurrency. The contract is managed by an appointed manager who oversees the lottery process. After a designated period, the contract picks a winner randomly from the pool of participants. The selected winner receives all the money collected during the lottery round, and the contract resets, allowing participants to join the next round.

Note - The winner is picked pseudo-randomly, i.e. it is not truly random due to the deterministic nature of blockchain and the impossibility of complete randomness.

## Installation

Before using the lottery contract, ensure you have Node.js and npm installed on your system.

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/suryaprakashpandey/lottery-contract.git
   ```
   
2. Install the required dependencies:
   ```bash
   npm install
   ```
   
3. To deploy the contract locally using a development environment like Ganache, run this command:
   ```bash
   npm test
   ```

Now you're ready to participate in the lottery game! Good luck! 🍀
