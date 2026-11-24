// MOCK CONTRACT FOR TESTING ONLY
contract MockDesignFlaws {
    uint256 public balance;

    // Design Flaw: Unchecked return value
    function unsafeCall(address payable _to) public {
        _to.call{value: 100}("");
    }

    // Design Flaw: Implicit visibility (older Solidity)
    function implicitVisibility() {
        balance = 100;
    }
}
