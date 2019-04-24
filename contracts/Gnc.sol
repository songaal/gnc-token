pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";

contract GNC is ERC20Burnable, ERC20Mintable {

    string public name = "GNcloud Token";
    string public symbol = "GNC";
    uint256 public decimals = 0;
    address payable owner;

    uint256 public constant INITIAL_SUPPLY = 1000000000;

    constructor() public {
        mint(msg.sender, INITIAL_SUPPLY);
    }

}


