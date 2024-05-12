// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Part_A {
    uint256 public a;
    uint256 public b;

    // Creating an event to log the increment
    event inc(address wallet, uint256 _a, string message);

    // Constructor to initialize value before deployment
    constructor(uint256 _b) {
        b = _b;
    }

    receive() external payable {
        increment();
    }

    function increment() public {
        ++a;
        emit inc(msg.sender, a, "Incremented"); // Calling the event
    }
}
