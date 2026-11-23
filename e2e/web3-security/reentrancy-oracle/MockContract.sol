// MOCK CONTRACT FOR TESTING ONLY
contract MockContract {
    mapping(address => uint) public balances;
    address public oracle;
    
    function withdraw() public {
        uint bal = balances[msg.sender];
        require(bal > 0);
        balances[msg.sender] = 0; // State change BEFORE external call (Fix)
        (bool sent,) = msg.sender.call{value: bal}("");
        require(sent);
    }
    
    function getSafePrice() public view returns (uint) {
        // Mock TWAP implementation
        return 100; 
    }
}
