// MOCK CONTRACT FOR TESTING ONLY
contract MockCircuitBreaker {
    bool public paused;
    address public owner;
    
    constructor() { owner = msg.sender; }
    
    modifier whenNotPaused() {
        require(!paused, "Contract paused");
        _;
    }
    
    function pause() public {
        require(msg.sender == owner, "Unauthorized");
        paused = true;
    }
    
    function unpause() public {
        require(msg.sender == owner, "Unauthorized");
        paused = false;
    }
    
    function performAction() public whenNotPaused {
        // Critical action
    }
}
