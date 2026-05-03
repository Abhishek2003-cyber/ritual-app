// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {MessageStore} from "../src/Counter.sol";

contract MessageStoreScript is Script {
    function run() external {
        vm.startBroadcast();
        new MessageStore();
        vm.stopBroadcast();
    }
}
