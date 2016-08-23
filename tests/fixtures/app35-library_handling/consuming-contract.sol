import "./single-lib.sol";

contract C {
    using Search for uint[];
    uint[] data;

    function append(uint value) {
        data.push(value);
    }

    function getDataAtIndex(uint index) constant returns (uint) {
        return data[index];
    }

    function replace(uint _old, uint _new) returns (uint) {
        // This performs the library function call
        uint index = data.indexOf(_old);
        if (index == uint(-1))
            data.push(_new);
        else
            data[index] = _new;

        return index;
    }
}