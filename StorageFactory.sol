// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

import "./SimpleStorage.sol";

// after "is SimpleStorage" StorageFactory is inherited
// so all functions from SimpleStorage is available here
contract StorageFactory is SimpleStorage {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNum)
        public
    {
        //address
        // ABI - application binary interface
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(
            _simpleStorageNum
        );
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return
            SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]))
                .retrieve();
    }
}
