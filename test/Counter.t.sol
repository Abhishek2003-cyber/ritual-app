// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {MessageStore} from "../src/Counter.sol";

contract MessageStoreTest is Test {
    MessageStore public messageStore;

    function setUp() public {
        messageStore = new MessageStore();
    }

    function test_GetMessage() public view {
        string memory msg = messageStore.getMessage();
        assertEq(msg, "Hello Ritual!");
    }

    function test_SetMessage() public {
        messageStore.setMessage("Hello from Abhishek!");
        assertEq(messageStore.getMessage(), "Hello from Abhishek!");
    }
}
