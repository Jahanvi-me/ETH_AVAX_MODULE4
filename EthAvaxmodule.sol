/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable{
    // cuntructor call
    constructor() ERC20("Degen", "DGN") {}
    // storing the owner of DegenToken contract
    address ownerOfContract = msg.sender;
    uint redeemAmount;

   
function transferToken(address reciever, uint amount) public{
            require(balanceOf(msg.sender) >= amount, "Low Balance");
            _transfer(msg.sender, reciever, amount);
        }

    function mint(address _address, uint256 amount) public onlyOwner {
        _mint(_address, amount);
    }

    function Balance() external view returns (uint256) 
    { 
        return this.balanceOf(msg.sender);
    }

    function burntoken(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }

    string public storeCompanions = "List of Companions; 1 Labrador Retriever(100 DGN) 2 Labrador Retriever(200 DGN) 3 Poodle(300 DGN) 4 Pug(400 DGN)";

    function redeemTokens(uint itemCode) external {
        require(itemCode >= 1 , "Please select a number greater than one");

        if (itemCode == 1)
        {
            redeemAmount = 100;
        } 
        else if (itemCode == 2) 
        {
            redeemAmount = 200;
        } 
        else if(itemCode == 3) 
        {
            redeemAmount = 300;
        }
        else if(itemCode == 4) 
        {
            redeemAmount = 400;
        }
        require(balanceOf(msg.sender) >= redeemAmount, "need to earn more tokkens to redeem this item");
        _transfer(msg.sender,ownerOfContract, redeemAmount);
    }

}
