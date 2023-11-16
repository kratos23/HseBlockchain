// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Storage {

    struct Person {
        string name;
        uint16 age;
        bool hasPets;
    }

    event PersonUpdated(string indexed key, Person person);
    event PersonRemoved(string indexed key);

    mapping(string => Person) private storageMap;

    function put(string calldata key, Person calldata person) public {
        storageMap[key] = person;
        emit PersonUpdated(key, person);
    }

    function remove(string calldata key) public {
        delete storageMap[key];
        emit PersonRemoved(key);
    }
    
}