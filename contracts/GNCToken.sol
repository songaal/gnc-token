pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract GNC is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable, Ownable {

    uint256 public constant initSupply = 1000000000;

    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals
    ) ERC20Detailed(name, symbol, decimals) public {
        _mint(owner(), initSupply * 10**uint(decimals));
    }

    // ERC20Burnable()
    // ERC20Mintable()
    // ERC20()
    // public
    // {}
}
