pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract GNC is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {

    constructor(
        string name,
        string symbol,
        uint8 decimals
    )
    ERC20Burnable()
    ERC20Mintable()
    ERC20Detailed(name, symbol, decimals)
    ERC20()
    public
    {}
}