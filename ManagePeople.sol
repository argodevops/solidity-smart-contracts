pragma solidity >= 0.7.6;

contract PeopleMap {
    
    uint256 public peopleCount = 0;
    
    mapping(uint256 => Person) public people;
    
    address owner;
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    struct Person {
        uint256 _id;
        string _firstName;
        string _lastName;
    }
    
    constructor() {
        owner = msg.sender;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal {
        peopleCount += 1;
    }
    
}
