// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

interface IWhiteLightDebridge {
    function mint(
        bytes32 _debridgeId,
        uint256 _chainIdFrom,
        address _receiver,
        uint256 _amount,
        uint256 _nonce,
        bytes[] memory _signatures
    ) external;

    function claim(
        bytes32 _debridgeId,
        uint256 _chainIdFrom,
        address _receiver,
        uint256 _amount,
        uint256 _nonce,
        bytes[] memory _signatures
    ) external;

    function mintWithOldAggregator(
        bytes32 _debridgeId,
        uint256 _chainIdFrom,
        address _receiver,
        uint256 _amount,
        uint256 _nonce,
        bytes[] memory _signatures,
        uint8 _aggregatorVersion
    ) external;

    function claimWithOldAggregator(
        bytes32 _debridgeId,
        uint256 _chainIdFrom,
        address _receiver,
        uint256 _amount,
        uint256 _nonce,
        bytes[] memory _signatures,
        uint8 _aggregatorVersion
    ) external;
}
