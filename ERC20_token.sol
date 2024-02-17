// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CustomContract is ERC20 {
    address public OwnerOfToken;

    constructor() ERC20("AToken", "ATK") {
        OwnerOfToken = msg.sender;
        _mint(address(this), 1000);
    }

    modifier onlyOwnerOfToken() {
        require(msg.sender == OwnerOfToken, "Only owner of the token can access");
        _;
    }

    function TokensMint(address to, uint256 amount) public onlyOwnerOfToken {
        _mint(to, amount);
    }

    function TokensBurn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        _transfer(from, to, amount);        
        _approve(from, to,amount);

        return true;
    }
}