// SPDX-License-Identifier: WTFPL
pragma solidity 0.6.12;

import "../SodaVault.sol";

// Owned by Timelock
contract WETHVault is SodaVault {

    constructor (
        SodaMaster _sodaMaster,
        IStrategy _createSoda
    ) SodaVault(_sodaMaster, "Soda WETH Vault", "vWETH") public  {
        IStrategy[] memory strategies = new IStrategy[](1);
        strategies[0] = _createSoda;
        setStrategies(strategies);
    }
}
