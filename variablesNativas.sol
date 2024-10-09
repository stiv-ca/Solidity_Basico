// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract variablesNativas {
    
    string private fullName; // solo puede acceder el que inicializo el contracto

    constructor(string memory _lastName) {
        fullName = string.concat("Mi nombre es:", " ", _lastName);
    }

    function getName() public view returns (string memory){
        return fullName;
    }

    /*
    uint enteros sin signo (no negativos)
    uint8 rango de 0 a 2 ** 8 -1
    uint16 rango de 0 a 2 ** 16 -1
    */

    uint8 public uint_8 = 1;
    uint16 public uint_16 = 123;

    /*
    la diferencia entre uint y int es que int puede guardar
    números negativos
    */
    int public int_8 = -1;

    //El tipo de variable adress es una dirección

    address public my_adress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

}