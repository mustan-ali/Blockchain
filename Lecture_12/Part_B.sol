// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Part_B {
    mapping(address => uint256) public balances;

    function deposit(uint256 amount) public payable {
        require(amount > 0, "Amount should be greater than 0");
        balances[msg.sender] += amount;
    }

    function withdraw(uint256 amount) public {
        require(amount > 0, "Amount should be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function getBalance(address addr) public view returns (uint256) {
        return balances[addr];
    }

    function transfer(address reciever, uint256 amount) public payable {
        require(amount > 0, "Amount should be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[reciever] += amount;
    }
}
