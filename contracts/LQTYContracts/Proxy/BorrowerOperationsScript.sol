// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/CheckContract.sol";
import "../Interfaces/IBorrowerOperations.sol";

contract BorrowerOperationsScript is CheckContract {
    IBorrowerOperations immutable borrowerOperations;

    constructor(IBorrowerOperations _borrowerOperations) public {
        checkContract(address(_borrowerOperations));
        borrowerOperations = _borrowerOperations;
    }

    function openTrove(
        uint _maxFee,
        uint _LUSDAmount,
        address _upperHint,
        address _lowerHint,
        uint _backedAmount
    ) external {
        borrowerOperations.openTrove(_maxFee, _LUSDAmount, _upperHint, _lowerHint, _backedAmount);
    }

    function addColl(address _upperHint, address _lowerHint, uint _backedAmount) external {
        borrowerOperations.addColl(_upperHint, _lowerHint, _backedAmount);
    }

    function withdrawColl(uint _amount, address _upperHint, address _lowerHint, uint _backedAmount) external {
        borrowerOperations.withdrawColl(_amount, _upperHint, _lowerHint, _backedAmount);
    }

    function withdrawLUSD(
        uint _maxFee,
        uint _amount,
        address _upperHint,
        address _lowerHint,
        uint _backedAmount
    ) external {
        borrowerOperations.withdrawLUSD(_maxFee, _amount, _upperHint, _lowerHint, _backedAmount);
    }

    function repayLUSD(uint _amount, address _upperHint, address _lowerHint, uint _backedAmount) external {
        borrowerOperations.repayLUSD(_amount, _upperHint, _lowerHint, _backedAmount);
    }

    function closeTrove() external {
        borrowerOperations.closeTrove();
    }

    function adjustTrove(
        uint _maxFee,
        uint _collWithdrawal,
        uint _debtChange,
        bool isDebtIncrease,
        address _upperHint,
        address _lowerHint,
        uint _backedAmount
    ) external {
        borrowerOperations.adjustTrove(
            _maxFee,
            _collWithdrawal,
            _debtChange,
            isDebtIncrease,
            _upperHint,
            _lowerHint,
            _backedAmount
        );
    }

    function claimCollateral() external {
        borrowerOperations.claimCollateral();
    }
}
