// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Part_C {
    
    struct Book {
        uint bookId;
        address issuer;
        bool isIssued;
        uint issuedAt;
    }

    Book b;

    function issueBook(uint _bookId) public {
        b = Book(_bookId, msg.sender, true, block.timestamp);
    }

    function getBook() public view returns (Book memory) {
        return b;
    }

    function isFineApplicable() public view returns (bool) {
        return block.timestamp - b.issuedAt > 7 days; 
        //Accepted time units are seconds, minutes, hours, days, weeks
    }
}