// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Patcoin is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("Patcoin", "PT") {
        _mint(0x22391eAb56E4dbBcb7bfa7f3Ac7af63b1838d3CA, initialSupply);
        transferOwnership(0x22391eAb56E4dbBcb7bfa7f3Ac7af63b1838d3CA);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
