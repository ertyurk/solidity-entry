// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

contract SimpleStorage {
    // this will get initilized with 0!
    // test comment
    uint256 public favoriteNumber;
    bool favoriteBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNum;

    People public person = People({favoriteNumber: 2, name: "Meer"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view func
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNum[_name] = _favoriteNumber;
    }
}
