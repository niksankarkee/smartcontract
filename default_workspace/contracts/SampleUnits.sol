// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

contract StartStopUpdateExample {
    
    receive() external  payable {}

    function destroySmartContract() public {
        selfdestruct(payable(msg.sender));
    }
 
}