// SPDX-License-Identifier: MIT LICENSE

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";


pragma solidity ^0.8.0;

contract multiSendContract{
    constructor() {
    }
    function multiSend(address contractAddress, uint256 tokenId, address[] memory to) public {
        ERC1155 Token = ERC1155(contractAddress);
        uint256 len = to.length;
        uint32 i = 0;
        uint256 amount = 1;
        while (i < len) {
            Token.safeTransferFrom(msg.sender, to[i], tokenId, amount,"");
            i += 1;
        }
    }

}
