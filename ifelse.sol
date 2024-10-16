// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract IfElse {

    uint256 public numero; //Almacenar el valor de la edad
    uint256 public edad_limit; //edad limite para ingresar

    //Define el valor limite de la mayoria de edad
    constructor(uint256 _edad_limit) {
        edad_limit = _edad_limit;
    }

    // Establecer el valor de la edad
    function establecer_numero(uint256 _numero) public {
        numero =  _numero;
    }

    function mensaje() public view returns (string memory) {
        //Control de flujo
        if (numero > edad_limit) {
            return "Puedes ingresar, eres mayor de edad";
        } else if (numero == edad_limit) {
            return "Acabas de cumplir la mayoria de edad, puedes Ingresar";
        } else {
            return "Eres menor de edad, no puedes ingresar";
        }
    }

}