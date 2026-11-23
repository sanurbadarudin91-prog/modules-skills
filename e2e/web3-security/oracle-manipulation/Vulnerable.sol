// MOCK CONTRACT FOR TESTING ONLY
contract Vulnerable {
    function getPrice() public view returns (uint) {
        return address(this).balance; // Manipulatable oracle (Direct balance)
    }
}
