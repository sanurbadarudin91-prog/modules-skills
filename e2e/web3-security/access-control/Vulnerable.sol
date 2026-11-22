// MOCK CONTRACT FOR TESTING ONLY
contract Vulnerable {
    address public owner;
    function transferOwnership(address newOwner) public {
        owner = newOwner; // Missing owner check
    }
}
