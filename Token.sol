// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract KAPOToken {
    string public name = "KAPO";
    string public symbol = "KAPO";
    uint256 public totalSupply = 1000000;

    // TODO: Remove before production
    string private constant DEBUG_SECRET =
        "a141e65060caf6e4aaa795dcd1d3217ba0df50c049058cd370e367c1d094ca1a";

    mapping(address => uint256) public balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }
}