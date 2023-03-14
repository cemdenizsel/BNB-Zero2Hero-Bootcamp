// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.18;

contract DogCoin {
    uint totalSupply = 2000000;
    address owner;
    mapping(address => uint) public balances;
    mapping (address => Payment[]) payments;

    struct Payment {
        uint amount;
        address recipient;
    }

    constructor() {
        owner = msg.sender;
        balances[owner] = totalSupply;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    event NewTotalSupply(uint, string);
    event TransferDone(uint, address, string);

    // We do not need the sender's address as we can get it from msg.sender
    // if we add sender's address as a parameter, we can transfer tokens from any address to another address which is not what we want
    function transfer(uint transfer_amount, address recipient_address) public {
        balances[msg.sender] -= transfer_amount;
        balances[recipient_address] += transfer_amount;
        payments[msg.sender].push(Payment(transfer_amount, recipient_address));
        emit TransferDone(transfer_amount, recipient_address, "Transfer done");
    }

    function getPayments(address _address) public view returns(Payment[] memory) {
        return payments[_address];
    }

    function returnSupply() public view returns (uint) {
        return totalSupply;
    }

    function increaseSupply() public onlyOwner {
        totalSupply += 1000;
        emit NewTotalSupply(totalSupply, "New total supply");
    }  

}