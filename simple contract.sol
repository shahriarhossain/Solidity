pragma solidity ^0.4.18;

contract Employee{
    string public name = "Shahriar";
    uint private age= 26;
    string bloodGroup;
    uint public initialBalance =0;
    
    //Function visibility is not specified. Default is 'public'
    constructor(){
        initialBalance = 10;
    }

    function getName() public constant returns(string){
        return (name);
    }
    
    function getEmployeeInfo() public constant returns(string, uint, string, uint)
    {
        return (name, age, bloodGroup, initialBalance);
    }

    function setName(string _name) public {
        name = _name;
    }
}