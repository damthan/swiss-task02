// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

//cliphot69.com

contract ERC20Test is ERC20 {
    constructor() ERC20("cliphot69", "cliphot69") {}

    function mint100tokens() public {
        _mint(msg.sender, 100 * 10 ** 18);
    }

    function burn100tokens() public {
        _burn(msg.sender, 100 * 10 ** 18);
    }
}
