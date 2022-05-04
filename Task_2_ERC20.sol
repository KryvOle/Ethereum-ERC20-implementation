// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract KRY is ERC20 {
    constructor() ERC20("Kryvosheia", "KRY") {
        _mint(msg.sender, 10000);
    }

    receive() external payable {
        _mint(msg.sender, msg.value * 10);
    }
}