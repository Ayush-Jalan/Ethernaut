// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Destructing {
    constructor()public{

    }
    function collect() public payable returns (uint){
        return address(this).balance;
    }
    function destruct(address payable a) public {
        selfdestruct(a);
    }
}