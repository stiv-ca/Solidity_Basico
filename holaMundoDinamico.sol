// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract holaMundoDinamico {
    
    string saludoPublico = "Hola Mundo Dinamico";
    string public miSaludo_e = "Saludo Inicial en el despliegue";

    function leerSaludo() public view returns (string memory) {
        return saludoPublico;
    }

    function guardarSaludo(string memory _nuevoSaludo) public  {
        saludoPublico = _nuevoSaludo;
    }

}