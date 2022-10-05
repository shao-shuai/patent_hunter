// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface ICounter {
    function count() external view returns (uint);

    function increment() external;

    function testInterface() external;

    function str() external view returns (bytes2);
}

contract SimpleStorage1 {
    uint public intMin = type(uint8).min;
    uint public intMax = type(uint8).max;
    uint public expo = 3**3;

    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function incrementStr(address _counter) external {
        ICounter(_counter).testInterface();
    }

    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }

    function test(address _counter) external view returns (bytes2) {
        return ICounter(_counter).str();
    }
}