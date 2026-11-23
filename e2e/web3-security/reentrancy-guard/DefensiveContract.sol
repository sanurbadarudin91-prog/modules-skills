// MOCK CONTRACT FOR TESTING ONLY
contract DefensiveContract {
    mapping(address => uint) public balances;
    bool private locked;

    modifier noReentrancy() {
        require(!locked, "Reentrancy detected");
        locked = true;
        _;
        locked = false;
    }

    function withdraw(uint _amount) public noReentrancy {
        require(balances[msg.sender] >= _amount);
        // Effects before interactions
        balances[msg.sender] -= _amount;
        (bool sent,) = msg.sender.call{value: _amount}("");
        require(sent);
    }
}
