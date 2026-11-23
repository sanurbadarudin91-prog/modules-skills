// MOCK CONTRACT FOR TESTING ONLY
contract MockVault {
    uint256 public totalAssets;
    mapping(address => uint256) public userBalance;

    function deposit() public payable {
        userBalance[msg.sender] += msg.value;
        totalAssets += msg.value;
    }

    // Invariant: totalAssets must always equal sum of all user balances
    // Mock testing function for Foundry (handler)
    function invariant_balanceMatchesTotal() public view returns (bool) {
        // Logic to sum user balances would be implemented here
        return true; 
    }
}
