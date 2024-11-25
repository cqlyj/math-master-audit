// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {MathMasters} from "../src/MathMasters.sol";

contract CompactCodeBase {
    function mulWadUp(uint256 x, uint256 y) external pure returns (uint256 z) {
        z = MathMasters.mulWad(x, y);
    }
}
