// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExampleConstructor {
    address public myAddress;

    constructor(address _someAddress){
        myAddress = _someAddress;
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function setMyAddressToMasSender() public {
        myAddress = msg.sender;
    }
}