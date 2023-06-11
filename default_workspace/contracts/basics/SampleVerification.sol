// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

contract MyContract {
    
    mapping(address => uint) public balance;

    constructor(){
        balance[msg.sender] = 100;
    }

    function transfer(address to, uint amount) public {
        balance[msg.sender] -= amount;
        balance[to] += amount;
    }

    function someCrypticFunctionName(address _addr) public {
         balance[_addr] = 5;
    }
 
}