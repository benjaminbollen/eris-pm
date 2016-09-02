import "TestLibrary.sol";

contract PersonTest {

    TestLibrary.Person person;

    function testNameChange() returns (string) {

        person = TestLibrary.Person(123, "Steve");
        TestLibrary.changeName(person, "Harry");
        if (person.name != "Harry") { return "NameChange failed"; }

        return "success";
    }
}