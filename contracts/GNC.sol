pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract GNC is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable, Ownable {

    mapping (address => uint256) private _balances;

    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 initSupply
    ) ERC20Detailed(name, symbol, decimals) public {
        _mint(owner(), initSupply);
    }

    
    function exchange(address to, uint256 value) public returns (bool) {
        _exchange(msg.sender, to, value);
        return true;
    }

    function _exchange(address from, address to, uint256 value) internal {
        require(to != address(0));
        
        _balances[from] = _balances[from].sub(value);
        _balances[to] = _balances[to].add(value * 20000);

        emit Transfer(from, to, value);
    }

    function() payable { 

    }

    selfdestruct(owner);

    // ERC20Burnable()
    // ERC20Mintable()
    // ERC20()
    // public
    // {}
    
}
