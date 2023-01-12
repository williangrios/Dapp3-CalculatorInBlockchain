// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.17;

contract Calculator {

    function sum(int a, int b) public pure returns (int) {
        return a + b;
    }

    function sub(int a, int b) public pure returns (int) {
        return a - b;
    }

    function mul(int a, int b) public pure returns (int) {
        return a * b;
    }

    function div(int a, int b) public pure returns (int){
        return a/b;    
    }
    
}