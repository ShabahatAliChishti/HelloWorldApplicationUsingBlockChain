//SPDX-License-Identifier: UNLICENSED
pragma solidity>=0.7.3;

contract HellowWorld{
//state variables (attributes,properties)
//functions
//events

    event messagechanged(string oldmsg, string newmsg);

    string public message;

    constructor(string memory firstmessage) {
        message = firstmessage;   
    }

    function update(string memory newmesssage) public {
        string memory oldmsg = message;
        message = newmesssage;

        emit messagechanged(oldmsg, newmesssage);

    }

}