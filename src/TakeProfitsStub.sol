// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {TakeProfitsHook} from "./TakeProfitsHook.sol";

import {BaseHook} from "v4-periphery/BaseHook.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";

contract TakeProfitsStub is TakeProfitsHook {
    constructor(
        IPoolManager _poolManager,
        TakeProfitsHook addressToEtch
    ) TakeProfitsHook(_poolManager, "") {}

    // make this a no-op in testing
    function validateHookAddress(BaseHook _this) internal pure override {}
}