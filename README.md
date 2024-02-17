# Sanjan Token

This Solidity program represents the Sanjan Token, an ERC-20 compliant token on the Ethereum blockchain. The token contract allows the owner to mint new tokens, burn tokens, and transfer tokens between addresses. Below is the documentation to help you understand, deploy, and interact with the Sanjan Token.

## Description

The Sanjan Token contract is developed in Solidity, a programming language for creating smart contracts on the Ethereum blockchain. This ERC-20 token has features such as minting, burning, and transferring, making it suitable for various decentralized applications.

## Getting Started

### Executing Program

To run the Sanjan Token contract, you can use Remix, an online Solidity IDE.

1. Visit the Remix website at [https://remix.ethereum.org/](https://remix.ethereum.org/).
2. Create a new file by clicking on the "+" icon in the left-hand sidebar.
3. Save the file with a `.sol` extension (e.g., `SanjanToken.sol`).
4. Copy and paste the Sanjan Token contract code into the file.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Sanjan_token is ERC20 {
    // Contract code...
}
```

5. To compile the code, click on the "Solidity Compiler" tab, set the "Compiler" option to "0.8.20," and click "Compile SanjanToken.sol."
6. Deploy the contract by clicking on the "Deploy & Run Transactions" tab. Select the "Sanjan_token" contract and click "Deploy."

### Interacting with the Contract

Once deployed, you can interact with the Sanjan Token contract:

1. Call the `mint` function to create new tokens. Only the owner can perform this action.
2. Call the `burn` function to destroy tokens. Any user can perform this action.
3. Call the `transferFrom` function to transfer tokens between addresses. Ensure proper allowance is set.

## Authors

- Sanjan Dileep sanjan.d15@gmail.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
