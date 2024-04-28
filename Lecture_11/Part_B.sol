// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Part_B {
    //Struct is a user-defined data type that groups related data together
    struct Student {
        string name;
        uint regNo;
        bool isPresent;
    }

    Student s; //Declaring a struct variable
    Student[] public studentsArray; //Declaring an array of struct

    function setStudent() public {
        //Setting single student
        s = Student("Ali", 123, true);
    }

    function getStudent() public view returns (Student memory) {
        return s;
    }

    function setStudent(string memory _name, uint _regNo, bool _isPresent) public {
        studentsArray.push(Student(_name, _regNo, _isPresent)); //Setting multiple students
    }

    function getStudentArray() public view returns (Student[] memory) {
        return studentsArray;
    }
}
