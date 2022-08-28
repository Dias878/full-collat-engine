// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../config/types.sol";

interface IGrappa {
    function getDetailFromProductId(uint32 _productId)
        external
        view
        returns (
            address engine,
            address underlying,
            address strike,
            address collateral,
            uint8 collateralDecimals
        );

    function assets(uint8 _id) external view returns (AssetDetail memory asset);

    function getPayout(uint256 tokenId, uint64 amount)
        external
        view
        returns (
            address engine,
            address collateral,
            uint256 payout
        );
}
