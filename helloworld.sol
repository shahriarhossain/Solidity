pragma solidity ^0.4.18;

contract HelloWorldContract{
    string public text = "Hello World from solidity!";
    
    function helloWorld() public constant returns(string){
        return (text);
    }
}