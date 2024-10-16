// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract solidity_var {

    address public block_now; //Dirección del minero
    uint public block_diff; //Dirección del bloque actual
    uint public block_num; //Número del bloque actual
    bytes32 public block_hash; //Tipo de dato para el bloque hash
    uint public time_stamp; //Marca de tiempo de la cadena de bloques
    uint public gas_left; //gas left
    address public sender; // Dirección de quien esta realiazando la llamada al contrato
    bytes4 public sig_id; //Primeros 4 bytes de la llamada a la función
    uint public gas_limit; // Limite del gas de bloque Actual

    function updateParams() public  {
        block_now = block.coinbase;
        block_diff = block.prevrandao;
        block_num = block.number;
        time_stamp = block.timestamp;
        gas_left = gasleft();
        sender = msg.sender;
        sig_id = msg.sig;
        gas_left = block.gaslimit;
    }


}