// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MessageStore {
    string private message;
    address public owner;

    event MessageUpdated(string newMessage, address updatedBy);

    constructor() {
        owner = msg.sender;
        message = "Hello Ritual!";
    }

    function setMessage(string memory _message) public {
        message = _message;
        emit MessageUpdated(_message, msg.sender);
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
