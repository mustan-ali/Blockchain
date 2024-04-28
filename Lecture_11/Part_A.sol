// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Part_A {
    
    // Enum is a user-defined data type that consists of a constant value
    enum status {failed, average, passed}

    status s;

    function setStatus() public {
        s = status.passed;
    }

    function getStatus() public view returns (status) {
        return s;
    }

    // Mapping is used to store key-value pairs
    // mapping(keyType => valueType) variableName;
    mapping(address => uint) balances;

    function setBalance(uint value) public {
        balances[msg.sender] = value;
    }

    function getBalance(address addr) public view returns (uint) {
        return balances[addr];
    }
}
