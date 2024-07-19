# MYTOKEN

MyToken is a Minting and Burning Token Contract.This contract shows how to use the Solidity programming language to create a simple ERC20 token with minting and burning features.

## DESCRIPTION

The contract MyToken inherits from the ERC20 contract, which is a standard implementation of ERC20 tokens provided by OpenZeppelin. It introduces a new token named "MyToken" with symbol "MTK".
Upon deployment, the contract initializes by minting 1,000,000 tokens and assigning them to the deployer's address. The deployer is also designated as the owner of the contract. The contract 
includes functions to mint (mint) new tokens, restricted to only the owner of the contract, and to burn (burn) tokens, which any token holder can initiate to reduce their token balance. These 
functionalities leverage the inherent security and interoperability of ERC20 tokens, making it suitable for various tokenization applications on the Ethereum blockchain.

## GETTING STARTED

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

### INSTALLING

1] Open Remix IDE.
2] Create a new file and paste the MyToken.sol contract code.
3] Compile the contract.
4] Interact with the deployed contract through the Remix interface.

### EXECUTING PROGRAM

    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;

    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    contract MyToken is ERC20 {
    address public owner;

    constructor() ERC20("MyToken", "MTK") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
        owner = msg.sender;
    }

    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "Only the owner can mint");
        _mint(to, amount);
    }



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
