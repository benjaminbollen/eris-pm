library TestLibrary {

    struct Person {
        uint id;
        bytes32 name;
    }

    function changeName(Person storage p, bytes32 newName) {
        p.name = newName;
    }

}

