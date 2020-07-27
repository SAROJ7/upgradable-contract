// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

// Import Auth from the access-control subdirectory
//import "./access-control/Auth.sol";


contract Boxs {
    uint256 private value;
    //Auth private auth;


    // Emitted when the stored value changes
    event ValueChanged(uint256 newValue);

    // constructor(Auth _auth) public {
    //     auth = _auth;
    // }


    // Stores a new value in the contract
    function store(uint256 newValue) public {
        // Require that the caller is registered as an administrator in Auth
        //require(auth.isAdministrator(msg.sender), "Unauthorized");
        
        value = newValue;
        emit ValueChanged(newValue);
    }

    // Reads the last stored value
    function retrieve() public view returns (uint256) {
        return value;
    }

    // Increments the stored value by 1
    function increment() public {
        value = value + 1;
        emit ValueChanged(value);
    }

}