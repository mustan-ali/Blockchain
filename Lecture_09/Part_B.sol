// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Part_B {
    int256 a;
    int256 b;

    function setA(int256 x) public {
        a = x;
    }

    function setB(int256 y) public {
        b = y;
    }

    function Addition() public view returns (int256) {
        return a + b;
    }

    function Subtraction() public view returns (int256) {
        return a - b;
    }

    function Multiplication() public view returns (int256) {
        return a * b;
    }

    function Division() public view returns (int256) {
        return a / b;   //return integer only (no decimal points)
    }

    function Modulus() public view returns (int256) {
        return a % b;
    }

    function IncrementA() public view returns (int256) {
        int256 x = a;
        return ++x;
    }

    function DecrementB() public view returns (int256) {
        int256 y = b;
        return --y;
    }

    function Comparison() public view returns (bool) {
        return a == b ? true : false;
    }
}
