// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// Inherits from SimpleStorage
contract ExtendStorage is SimpleStorage {
    
    // Add my name to a color I want to save.
    function store(string memory _favoriteColor) public override {
        myFavoriteColor = string(abi.encodePacked(_favoriteColor, " Steph Crown"));
    }
}