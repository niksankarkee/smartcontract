// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

contract Owner {
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "You are not allowed");
        _;
    }
}