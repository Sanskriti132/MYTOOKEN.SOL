# SIMTOKEN

SimpleToken is a Minting and Burning Token Contract.This contract shows how to use the Solidity programming language to create a simple ERC20 token with minting and burning features.

## DESCRIPTION

A smart contract called SimpleToken was created on the Ethereum network using Solidity. It provides the bare minimum of features for burning and minting tokens. This contract offers a clear overview of the fundamental tasks associated with token management in a decentralized setting,
Tokens can be burned by any user to lower their balance and the overall supply, and the contract permits the owner to mint additional tokens, increasing the total supply. It can be used as a basic example for comprehending blockchain-based token lifecycle management and as a building block for more intricate token systems.

## GETTING STARTED

An ERC20 token contract called SimpleToken is simple. It has functions to control the token's supply and balance in addition to public variables for the token's name and symbol. Token balances are tracked via a mapping, which allows users to burn or mint new tokens to adjust the overall supply and balances for each address.
This contract is perfect for learning or as a foundation for developing more complex token solutions. It illustrates how to manage a token's lifetime in a blockchain system in an efficient and straightforward manner.

### INSTALLING

Open your web browser and go to the Remix IDE by clicking on the link.
Make a New File:
Press the "File Explorer" symbol.
The "+" button can be used to start a new file.
Give SimpleToken.sol file name.
Copy the code, then paste it.
Copy the contract code for SimpleToken that is given below.
Paste it inside Remix.environment's SimpleToken.sol file.

### EXECUTING PROGRAM

    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;

    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    contract SimpleToken is ERC20 {
    address public owner;

    constructor() ERC20("SimpleToken", "SIM") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
        //Mints 1,000,000 tokens (adjusted for decimals) and assigns them to the deployer's address.
        owner = msg.sender;
    } //Sets the owner variable to the address that deployed the contract.

    // Modifier to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;//Requires that the caller is the owner, otherwise it reverts with an error message.
    }

    // Function to mint new tokens, only accessible by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function for a user to burn their tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    }   

## HELP
Compiler Mistakes: Solidity version 0.8.18 or higher is installed on  system.

## AUTHOR
Sanskriti Anand
SANSKRITIANAND@132

## LICENSE
This project is licensed under the METACRAFT License [MYTOKEN]https://github.com/Sanskriti132/MYTOOKEN.SOL/new/main?filename=README.md
