pragma solidity >= 0.7.6;

contract PeopleMap {
    
    uint256 public peopleCount = 0;
    
    mapping(uint256 => Person) public people;
    
    struct Person {
        uint256 _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
}
