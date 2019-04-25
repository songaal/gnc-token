const { expectThrow } = require("../helpers/expectThrow");
const { EVMRevert } = require("../helpers/EVMRevert");
const SampleToken = artifacts.require("SampleToken");
const BigNumber = web3.BigNumber;
require("chai")
    .use(require("chai-bignumber")(BigNumber))
    .should();
    contract("SampleToken", function([_, owner, investor]) {
        let token;
        const _name = "GnCloud Token";
        const _symbol = "GNC";
        const _decimals = 0;
        const _total_supply = new BigNumber(1000000000);
        const _over_total_supply = new BigNumber(1000000000);
        beforeEach(async function() {
            token = await SampleToken.new(_name, _symbol, _decimals, _total_supply, {
    from: owner
            });
        });
        it("has a name", async function() {
            (await token.name()).should.eq(_name);
        });
    it("has a symbol", async function() {
    (await token.symbol()).should.eq(_symbol);
    });
    it("has 18 decimals", async function() {
    (await token.decimals()).should.be.bignumber.equal(_decimals);
    });
    it(
    "has " + String(1000000000) + " total supply",
    async function() {
    (await token.totalSupply()).should.be.bignumber.equal(1000000000);
    }
    );
    it("assigns the initial total supply to the creator", async function() {
    const totalSupply = await token.totalSupply();
    const ownerBalance = await token.balanceOf(owner);
    ownerBalance.should.be.bignumber.equal(totalSupply);
    });
    it("transfer token to the investor", async function() {
    await token.transfer(investor, 1000, { from: owner });
    const investorBalance = await token.balanceOf(investor);
    investorBalance.should.be.bignumber.equal(1000);
    });
    it("transfer token to the investor", async function() {
    await token.transfer(investor, 1000, { from: owner });
    const investorBalance = await token.balanceOf(investor);
    investorBalance.should.be.bignumber.equal(1000);
    });
    it("should reject transfer token(more than has) to the investor", async function() {
    await expectThrow(
    token.transfer(investor, _over_total_supply, { from: owner }),
    EVMRevert
    );
    });
});