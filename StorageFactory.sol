// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// imports SimpleStorage contract
import "./SimpleStorage.sol";

contract StorageFactory {
    // initializes a variable of type SimpleStorage
    SimpleStorage[] public groups;
    function createSimpleStorageContract() public {

        // Creates a new instance SimpleStorage contract
        // A new group
        SimpleStorage group = new SimpleStorage();
        groups.push(group);
    }

    // Set my fav color of a group
    function setMyFavColorToGroup(uint256 _groupIndex, string memory _color) public {
        groups[_groupIndex].store(_color);
    }

    // Retrieve my fav color of a group
    function getMyFavColorOfGroup(uint256 _groupIndex) public view returns(string memory) {
        return groups[_groupIndex].retrieveMyFavColor();
    }
}