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
