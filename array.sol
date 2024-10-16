// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Array {
    
    uint256[] public arr1; //Array Vacio
    uint256[] public arr2 = [22,33,44]; //Array con elementos
    uint256[10] public arr3; //Array no tiene elementos pero si sé cuantos voy a guardar


    //trae el elmento del array
    function get(uint _i) public view returns (uint256) {
        return arr2[_i];
    }

    //Trae el array completo
    function getArray() public view returns (uint256[] memory)  {
        return arr2;
    }

    //Colocar un nuevo elemento en el array
    function push(uint256 _i) public  {
        arr2.push(_i);
    }

    //Borra el ultimo elemento del array
    function pop() public  {
        arr2.pop();
    }

    //Contar el número de elementos que tiene el array
    function getLength() public view returns (uint256) {
        return arr2.length;
    }

    //Borrar un elemento en particular
    function renmove(uint256 _index) public {
        delete arr2[_index];
    }
}