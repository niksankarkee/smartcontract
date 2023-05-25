// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

contract SampleUnits {
    modifier betweenOneAndTwoEth(){
        require (msg.value >= 1 ether && msg.value <= 2 ether);
    // ether 
    // gwei
    // wei
        _;
    }

    uint runUntilTimestamp;
    uint startTimestamp;

    constructor(uint startInDays){
        // startTimestamp = block.timestamp + (startInDays * 24 * 60 *60);
        // runUntilTimestamp = startTimestamp + ( 7 * 24 * 60 * 60);
        startTimestamp = block.timestamp + (startInDays * 1 days);
        runUntilTimestamp = startTimestamp + ( 7 days);
    // seconds
    // minutes
    // hours
    // days
    // weeks
    }


}