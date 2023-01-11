// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.9;

import "@openzeppelin/contracts/utils/Strings.sol";

contract Calculator {

    function sum(uint a, uint b) pure returns (uint) {
        return a + b;
    }

    function sub(uint a, uint b) pure returns (uint) {
        return a - b;
    }

    function mul(uint a, uint b) pure returns (uint) {
        return a * b;
    }

    //div - code by Sicong Zhao
    //it was necessary because solidity cannot handle fractional numbers
    function division(uint256 decimalPlaces, uint256 numerator, uint256 denominator) public view returns(uint256 quotient, uint256 remainder, string memory result) {
        uint256 factor = 10**decimalPlaces;
        quotient  = numerator / denominator;
        bool rounding = 2 * ((numerator * factor) % denominator) >= denominator;
        remainder = (numerator * factor / denominator) % factor;
        if (rounding) {
            remainder += 1;
        }
        result = string(abi.encodePacked(quotient.toString(), '.', numToFixedLengthStr(decimalPlaces, remainder)));
    }

    function numToFixedLengthStr(uint256 decimalPlaces, uint256 num) pure internal returns(string memory result) {
        bytes memory byteString;
        for (uint256 i = 0; i < decimalPlaces; i++) {
            uint256 remainder = num % 10;
            byteString = abi.encodePacked(remainder.toString(), byteString);
            num = num/10;
        }
        result = string(byteString);
    }
    
}