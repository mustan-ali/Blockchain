// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Part_A {
    mapping(address => uint256) public balance;
    mapping(address => uint256) public counter;
    uint256 count = 0;
    address owner = msg.sender;

    // modifier are used to check the conditions before executing the function
    modifier onlyOwner() {
        require(msg.sender == owner, "Only Owner can call this function");
        _; // this is used to execute the function
    }

    function addBalance() public payable {
        balance[msg.sender] += msg.value;
        counter[msg.sender] = ++count;
    }

    // modifier used in a function
    function getCounter(address add) public view onlyOwner returns (uint256) {
        return counter[add];
    }
}
