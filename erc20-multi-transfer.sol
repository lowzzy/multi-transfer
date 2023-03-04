// SPDX-License-Identifier: MIT LICENSE

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

pragma solidity ^0.8.0;

contract multiSendContract {
    constructor() {
    }
    function multiSend(address contractAddress,uint256 num, address[] memory to) public {
        IERC20 token = IERC20(contractAddress); 
        uint256 len = to.length;
        uint32 i = 0;
        while (i < len) {
            token.transferFrom(msg.sender, to[i], num);
            i+=1;
        }

    }

}

