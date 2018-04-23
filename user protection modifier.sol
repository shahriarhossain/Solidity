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
    
    function setAssetValueV1(uint value) public returns(string)
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

    modifier CreatorOnlyV2{
        if(creatorAddress!= msg.sender)
        {
            throw; //its depreciated, try not use. 
        }
        else
        {
            _;
        }
    }

    function setAssetValueV2(uint value) public CreatorOnlyV2 returns(string)
    {
        assetValue = value;
        return "Asset value updated"; 
    } 

    modifier CreatorOnlyV3{
        require(creatorAddress== msg.sender); //https://medium.com/blockchannel/the-use-of-revert-assert-and-require-in-solidity-and-the-new-revert-opcode-in-the-evm-1a3a7990e06e
        _;
    } 

    
    function setAssetValueV3(uint value) public CreatorOnlyV3 returns(string)
    {
        assetValue = value;
        return "Asset value updated"; 
    } 
}