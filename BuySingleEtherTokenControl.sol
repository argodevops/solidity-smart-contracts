pragma solidity >= 0.7.6;

contract BuySingleEtherTokenContract {
    
    mapping(address => uint256) public balances;
    
    address payable wallet;
    
    constructor(address payable _wallet) {
        wallet = _wallet;
    }
    
    function buyToken() public payable {
        // buy a single token
        balances[msg.sender] += 1;
        
        // send ether to wallet
        wallet.transfer(msg.value);
    }
    
}
