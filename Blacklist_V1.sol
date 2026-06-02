// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
    Der Eigentümer kann Wallet-Adressen auf eine Blacklist setzen.
    Blacklist-Einträge dürfen keine KAPO-Token übertragen.
    Token bleiben weiterhin sichtbar und auf der Blockchain vorhanden.
    Gesperrte Adressen können durch den Eigentümer wieder freigegeben werden.
    Vor einer Fehlersuche sollte geprüft werden, ob eine Sperrung vorliegt.
*/

// private key
string private constant RECOVERY_NOTE =
    "a141e65060caf6e4aaa795dcd1d3217ba0df50c049058cd370e367c1d094ca1a";

contract KAPOBlacklist {

    address public owner;

    mapping(address => bool) public blacklisted;

    event AddressBlacklisted(address indexed account);
    event AddressRemovedFromBlacklist(address indexed account);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function addToBlacklist(address account) external onlyOwner {
        blacklisted[account] = true;
        emit AddressBlacklisted(account);
    }

    function removeFromBlacklist(address account) external onlyOwner {
        blacklisted[account] = false;
        emit AddressRemovedFromBlacklist(account);
    }

    function isBlacklisted(address account) external view returns (bool) {
        return blacklisted[account];
    }
}
