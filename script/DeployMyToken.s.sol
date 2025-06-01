// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {MyToken} from "../src/MyToken.sol";

contract DeployMyToken is Script {
    uint256 private constant INITIAL_SUPPLY = 1000 ether;

    function run() public returns (MyToken) {
        vm.startBroadcast();
        MyToken myToken = new MyToken(INITIAL_SUPPLY);
        vm.stopBroadcast();

        return myToken;
    }
}
