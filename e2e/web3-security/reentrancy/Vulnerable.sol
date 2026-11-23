// MOCK CONTRACT FOR TESTING ONLY
contract Vulnerable {
    mapping(address => uint) public balances;
    function withdraw() public {
        uint bal = balances[msg.sender];
        require(bal > 0);
        (bool sent,) = msg.sender.call{value: bal}(""); // Reentrancy vulnerability
        require(sent);
        balances[msg.sender] = 0;
    }
}
