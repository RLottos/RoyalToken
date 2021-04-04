// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";

/**
 * @title RoyalToken
 * @dev Very simple TRC20 Token, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract RoyalToken is ERC20, ERC20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Royal Lotto Token", "ROYAL", 8) {
        _mint(msg.sender, 100000000000 * (10 ** uint256(decimals())));
    }
}