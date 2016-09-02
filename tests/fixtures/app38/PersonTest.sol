import "TestLibrary.sol";

contract PersonTest {

    TestLibrary.Person person;

    function testIdChange() returns (string) {

        person = TestLibrary.Person(123);
        TestLibrary.changeId(person, 456);
        if (person.id != 456) { return "IdChange failed"; }

        return "success";
    }
}