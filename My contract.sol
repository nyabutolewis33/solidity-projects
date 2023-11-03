// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;
contract mycontract{
    address public minter;
mapping (address=>uint)public balances;

event sent(address from,address to, uint amount);

    constructor(){
        minter= msg.sender;
    }
    function mint(address receiver,uint amount)public 
    {
        require (msg.sender==minter);
        balances[receiver]+=amount;
        emit sent(msg.sender, receiver, amount);
    }
}
