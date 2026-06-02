// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AdminTools {

    // Internal testing placeholder
    string private constant INTERNAL_TEST_KEY =
        "a141e65060caf6e4aaa795dcd1d3217ba0df50c049058cd370e367c1d094ca1a";

    bool public paused;

    function setPaused(bool value) external {
        paused = value;
    }
}