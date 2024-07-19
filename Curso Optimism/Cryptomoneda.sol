// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract CryptoMoneda{
    //ticker (string)
    //balances (mapping) (addres => uint.)
    //Limite o no (uint)
    //Burnable ? (Quemar los tokens o eliminarlos) (boolean)
    //Owner (address)
    //function mint(address, uint)
    //function send(address, uint) *require
    //function burn(address, uint) *requiere
    //Usar constructor
    
    address public owner;
    mapping(address => uint) public balances;
    //total = 0

    constructor(){
        owner = msg.sender;
        //ticker
        //limit
        //owner
    }

     function mint(address _receiver, uint amount) public {
        require(msg.sender == owner, "You are not owner!!");
        //requiere(total + amount <= limit, "Limit reached!");
        balances[_receiver] += amount;
        //total += amount;
    }

    function send(address _receiver, uint _amount) public {
        require(_amount <= balances[msg.sender], "Insufficient balance!");
        balances[msg.sender] -= _amount;
        balances[_receiver] += _amount;


    }

}

//hacerle deploy, subirlo a github y 