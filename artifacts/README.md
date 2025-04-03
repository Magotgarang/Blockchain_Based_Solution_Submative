# Wildlife Conservation Smart Contract

## Overview
This project involves a smart contract for the Wildlife Conservation initiative, which allows users to donate funds to conservation efforts. The contract tracks donations and allows the owner to withdraw funds.

## Features
- **Donate**: Anyone can donate funds to support wildlife conservation.
- **Owner Withdraw**: Only the contract owner can withdraw the funds to manage them.
- **Event Logging**: Events are logged for donations and withdrawals.
- **Testable**: The contract is equipped with unit tests to verify its functionality.

## Smart Contract
- The contract is written in **Solidity** and deployed on the **Ethereum Testnet** (such as Rinkeby).
- Functions in the contract include:
  - `donate()`: To donate funds.
  - `withdraw()`: To allow the owner to withdraw donations.
  - `getContractBalance()`: To check the contract's current balance.

## How to Deploy
1. **Install MetaMask**: Connect your MetaMask wallet to the Remix IDE.
2. **Deploy the Contract**: Compile the contract and deploy it to the Ethereum testnet using Remix.
3. **Interact**: Use Remix to interact with the contract, donating funds and performing withdrawals.

## Tests
The contract comes with test cases using the **Hardhat** framework. To run the tests, use the following steps:
1. Clone the repository.
2. Run `npm install` to install dependencies.
3. Run `npx hardhat test` to execute the tests.

## How It Works
1. **Donors** can send ETH to the contract using the `donate()` function. This function emits a `DonationReceived` event and updates the total donations.
2. The **owner** can withdraw donations by calling the `withdraw()` function, which emits a `FundsWithdrawn` event.

## Technology Used
- **Solidity** for smart contract development.
- **Remix IDE** for compiling, testing, and deploying the contract.
- **Hardhat** for testing the contract with JavaScript.
- **MetaMask** for wallet integration.


