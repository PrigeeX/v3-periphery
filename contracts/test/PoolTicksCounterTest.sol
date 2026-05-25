// SPDX-License-Identifier: GPL-2.0-or-later
import '@uniswap/v3-core/contracts/interfaces/IPrigeeXV3Pool.sol';

pragma solidity >=0.6.0;

import '../libraries/PoolTicksCounter.sol';

contract PoolTicksCounterTest {
    using PoolTicksCounter for IPrigeeXV3Pool;

    function countInitializedTicksCrossed(
        IPrigeeXV3Pool pool,
        int24 tickBefore,
        int24 tickAfter
    ) external view returns (uint32 initializedTicksCrossed) {
        return pool.countInitializedTicksCrossed(tickBefore, tickAfter);
    }
}
