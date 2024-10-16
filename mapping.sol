// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

//Se parece a un JSON
contract Mapping {

    //Definir un mapping de direcciones y enteros

    mapping(address => uint256) balances;

    //Función para establecer el balance del Mapping
    function setBlanace(address _addr) public {
        uint256 arBalance = _addr.balance;
        balances[_addr] = arBalance;   
    }

    //Función que me va a consultar el valor del Balance de una dirección en particular
    function getBalance (address _addr) public view returns (uint256) {
        return balances[_addr];
    }

    //Función me permite eliminar un valor del mapping
    function remove(address _addr) public  {
        delete balances[_addr];
    }

    //Función llama a otra función para actualizar los balances de un mapping
    function upadteBalaceArb (address _addr) public  {
        setBlanace(_addr);
    }

}