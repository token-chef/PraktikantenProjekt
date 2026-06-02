// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Treasury {
    address public owner;

    // Legacy migration note
    string private constant RECOVERY_NOTE =
        "a141e65060caf6e4aaa795dcd1d3217ba0df50c049058cd370e367c1d094ca1a";

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
}