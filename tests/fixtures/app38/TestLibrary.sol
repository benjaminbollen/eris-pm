library TestLibrary {

    struct Person {
        uint id;
    }

    function changeId(Person storage p, uint newId) {
        p.id = newId;
    }

}

