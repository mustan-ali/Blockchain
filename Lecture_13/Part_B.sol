// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Part_B {
    mapping(address => uint256) public balances;
    mapping(address => uint256) public depositTimestamp;

    function deposit() public payable {
        balances[msg.sender] = msg.value;
        depositTimestamp[msg.sender] = block.timestamp;
    }

    function withdraw() public {
        require(balances[msg.sender] > 0, "No balance to withdraw");
        require(block.timestamp >= depositTimestamp[msg.sender] + 5, "Funds are locked");

        // payable(msg.sender).transfer(balances[msg.sender]);
        balances[msg.sender] = 0;
        depositTimestamp[msg.sender] = 0;
    }
}
