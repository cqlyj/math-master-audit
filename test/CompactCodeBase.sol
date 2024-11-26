// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {MathMasters} from "../src/MathMasters.sol";

contract CompactCodeBase {
    function mulWadUp(uint256 x, uint256 y) external pure returns (uint256 z) {
        z = MathMasters.mulWad(x, y);
    }

    function uniSqrt(uint256 y) external pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    function mathMastersSqrt(uint256 y) external pure returns (uint256 z) {
        z = MathMasters.sqrt(y);
    }
}
