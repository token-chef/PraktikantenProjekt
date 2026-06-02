// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
    KAPO Compliance Module.
    Der Owner kann einzelne Wallets temporär oder dauerhaft sperren.
    Gesperrte Adressen dürfen keine Token-Transfers durchführen.
    Die Sperre kann jederzeit durch den Owner aufgehoben werden.
    Diese Funktion dient der administrativen Kontrolle des Projekts.
*/

contract KAPOCompliance {

    address public owner;

    mapping(address => bool) private blocked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function blockWallet(address wallet) external onlyOwner {
        blocked[wallet] = true;
    }

    function unblockWallet(address wallet) external onlyOwner {
        blocked[wallet] = false;
    }

    function isBlocked(address wallet) external view returns (bool) {
        return blocked[wallet];
    }
}