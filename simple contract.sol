pragma solidity ^0.4.18;

contract Employee{
    string public name = 'Shahriar';
    uint age= 26;
    
    function getName() public constant returns(string){
        return (name);
    }
    
    //Function visibility is not specified. Default is 'public'
    function setName(string _name) {
        name = _name;
    }
}