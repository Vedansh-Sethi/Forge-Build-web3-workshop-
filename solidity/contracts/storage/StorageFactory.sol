// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorage() public {
        listOfSimpleStorage.push(new SimpleStorage());
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _newSimpleStorageNumber
    ) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorage[
            _simpleStorageIndex
        ];

        mySimpleStorage.store(_newSimpleStorageNumber);
    }
}
