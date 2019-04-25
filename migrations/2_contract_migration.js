var GNC = artifacts.require("./GNC.sol"); 

const _name = "GnCloud Token"
const _symbol = "GNC"
const _decimals = 0
const _total_supply = 1000000000;

module.exports = function(deployer) {
  deployer.deploy(GNC, _name, _symbol, _decimals, _total_supply);
};
  
