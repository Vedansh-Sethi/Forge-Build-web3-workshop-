// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {
    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    uint256 favoriteNumber;

    Person[] public listOfAllPeople;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfAllPeople.push(
            Person({favoriteNumber: _favoriteNumber, name: _name})
        );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function seePerson(string memory _name) public view returns (uint256) {
        return nameToFavoriteNumber[_name];
    }
}
