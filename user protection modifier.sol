pragma solidity ^0.4.18;

contract protectingData{
    uint assetValue;
    address creatorAddress;

    constructor (uint value) public
    {
        assetValue = value;
        creatorAddress = msg.sender;
    }

    function getAssetValue() public constant returns(uint)
    {
        return (assetValue);
    }  
    
    function setAssetValue(uint value) public returns(string)
    {
        if(creatorAddress!= msg.sender)
        {
            return "You are not allwoed to change this value";
        }
        else
        {
            assetValue = value;
            return "Asset value updated";
        } 
    }  
}