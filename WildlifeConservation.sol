// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WildlifeConservationFund {
    address public owner;
    mapping(address => uint256) public donations;
    uint256 public totalDonations;

    event DonationReceived(address indexed donor, uint256 amount);
    event FundsReleased(address indexed recipient, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "only owner can release funds");
        _;
    }

    function donate() public payable {
        donations[msg.sender] += msg.value;
        totalDonations += msg.value;
        emit DonationReceived(msg.sender, msg.value);
    }

    function getTotalDonations() public view returns (uint256) {
        return totalDonations;
    }

    function getDonations(address donor) public view returns (uint256) {
        return donations[donor];
    }

    function releaseFunds(address payable recipient, uint256 amount) public onlyOwner {
        require(address(this).balance >= amount, "insufficient balance");
        recipient.transfer(amount);
        emit FundsReleased(recipient, amount);
    }
}
