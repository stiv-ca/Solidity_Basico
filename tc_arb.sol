// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract tc_arb {
    
    address payable public owner;

    struct Data {
        string date; // Fecha de envio
        string delivery_date; // Fecha estimada de llegada
        string product; // Nombre del producto
        string price; // Precio del producto
        string code; // Identificador del proveedor
        string cel_number; // Contacto de la persona que compro el producto
        int8 status; // 1. En camino, 2. Llego el pais, 3. Esta en la aduana y 4. Entregado
        address wallet; // Persona que ejecuto el contrato
    }

    Data public data; // Instancia de Data

    event newData(
        string date, 
        string delivery_date, 
        string product, 
        string price, 
        string code, 
        string cel_number, 
        int8 status, 
        address wallet
    );

    // Modifier para que solo el owner pueda retirar los fondos del contrato
    modifier onlyOwner() {
        require(msg.sender == owner, "Solo el propietario puede retirar los fondos");
        _; // Parte de la sintaxis para que funcione
    }

    /*Modifier lo que hace es verificar dentro de otras funciones que al ejecutar la función
    no se tenga el valor del fee + el gas*/
    modifier cost(uint amount) {
        require(msg.value >= amount, "No tiene saldo en ARB para ejecutar");
        _;
    }

    // Se define quien es el propietario del contrato
    constructor() {
        owner = payable(msg.sender);
    }

    // Función para cambiar los datos del enum
    function pushData(string memory _date,
                      string memory _delivery_date,
                      string memory _product,
                      string memory _price,
                      string memory _code,
                      string memory _cel_number,
                      int8 _status) public payable cost(1000000000000000) {

        data = Data(_date,
                    _delivery_date,
                    _product,
                    _price,
                    _code,
                    _cel_number,
                    _status,
                    msg.sender
                    );

        // Es como una especie de Log
        emit newData(_date,
                       _delivery_date, 
                       _product,
                       _price, 
                       _code, 
                       _cel_number, 
                       _status,
                       msg.sender);
    }

    function withdraw() public onlyOwner {
        uint balance = address(this).balance;
        require(balance > 0, "No se tiene fondos en el contrato todavia");
        owner.transfer(balance);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}