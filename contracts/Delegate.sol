// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Msg{
    bytes public c;
    constructor()public{
    c = abi.encodeWithSignature("pwn()");
    }
}