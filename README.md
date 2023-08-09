# Degentoken Smart Contract

This repository contains a Solidity smart contract for the "Degentoken" ERC20 token. The token contract provides basic functionalities of a standard ERC20 token and additional features for redeeming items based on a predefined item list.

## Token Details

- Name: Degen
- Symbol: DGN
- Decimals: 18

## Features

The "Degentoken" contract inherits from OpenZeppelin's ERC20 and ERC20Burnable contracts, providing standard ERC20 token functionality and the ability to burn tokens.

### Functions

1. `transferTokens(address _receiver_add, uint256 amount)`: Allows users to transfer tokens to another address. The function requires the sender to have a sufficient balance and uses the `approve` and `transferFrom` methods to perform the transfer.

2. `mint(address _address, uint256 amount)`: Allows the owner to mint new tokens and assign them to a specific address.

3. `storeCompanions()`: A view function that returns a list of available Companions and their corresponding token values for redemption.

4. `redeemTokens(uint256 itemCode)`: Allows users to redeem items by providing an itemCode. The contract validates the itemCode and checks if the user has enough tokens to redeem the selected item. If successful, the contract burns the corresponding amount of tokens.

5. `Balance()`: A view function that returns the balance of the caller's address.

6. `burntoken(uint256 amount)`: Allows users to burn their tokens. It checks if the user has enough tokens before performing the burn operation.

### Modifiers

- `onlyOwner`: A custom modifier that restricts access to functions to be only called by the contract owner.

## Item Redemption

Users can redeem various items using their tokens by calling the `redeemTokens` function with the appropriate itemCode. The redemption values for each item are listed in the `storeCompanions` function.

## Owner Functionality

The contract creator is set as the owner upon deployment. The owner has the privilege to mint new tokens using the `mint` function.

## Usage

To deploy the "Degentoken" smart contract, ensure you have the required version of the OpenZeppelin library. Then, deploy the contract to your desired Ethereum network.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
