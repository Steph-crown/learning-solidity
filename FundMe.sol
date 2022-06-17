// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// !FEATURES
// A Go Fund Me app
// Start a fundraiser
// Get people to fund you
// Set a minimum funding value
// View the list of fundings and their addresses
// Withdraw funds to your wallet.
// Set reason for the fundraiser
// End the fundraiser

contract FundMe {
    struct FundRaiserStatus {
        bool active;
        uint256 minAmount; //in USD
    }

    // Initializes the status of the owner's fund raiser.
    FundRaiserStatus public fundRaiserStatus = FundRaiserStatus({
        active: false, minAmount: 0
    });

    // fund a person
    function fund() public payable {

        // Checks that fundraiser is currently active
        require(fundRaiserStatus.active, "Fund raiser is not currently active");

        // Checks that the amount sender wants to send is up to `minAmount`
        require(msg.value >= fundRaiserStatus.minAmount, "Did not send enough"); // unit of measure is wei. 1e18 wei === 1eth
    }

    // withdraw your funds
    function withdraw() public {}

    // start the fund raiser
    function startFundRaiser(uint256 _minAmount) public {
        fundRaiserStatus.active = true;
        fundRaiserStatus.minAmount = _minAmount;
    }

    // end fund raiser
    function endFundRaiser() public {}

    // View list of fundings
    function viewListOfFundings() public {}

    // Utility functions
    function concatenateStrings(string memory _str1, string memory _str2) public pure returns(string memory) {
        return string(abi.encodePacked(_str1, _str2));
    }
}