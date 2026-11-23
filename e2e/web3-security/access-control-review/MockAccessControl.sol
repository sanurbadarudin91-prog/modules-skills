// MOCK CONTRACT FOR TESTING ONLY
contract MockAccessControl {
    address public owner;
    bool public paused;
    
    constructor() { owner = msg.sender; }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }
    
    function sensitiveAction() public onlyOwner {
        // Protected action
    }
    
    function setPause(bool _paused) public onlyOwner {
        paused = _paused;
    }
}
