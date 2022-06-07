// SPDX-FileCopyrightText: 2022 Lido <info@lido.fi>
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "./IERC20Metadata.sol";

/// @author psirex
/// @notice Extends the ERC20 functionality that allows the owner to mint/burn tokens
interface IERC20Ownable is IERC20, IERC20Metadata {
    /// @notice Returns owner of the token who can mint/burn tokens
    function owner() external view returns (address);

    /// @notice Creates amount_ tokens and assigns them to account_, increasing the total supply
    function mint(address account_, uint256 amount_) external;

    /// @notice Destroys amount_ tokens from account_, reducing the total supply.
    function burn(address account_, uint256 amount_) external;
}