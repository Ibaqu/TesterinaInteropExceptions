// This file is used to test the behavior when there is a failing BeforeSuite function.
import ballerina/test;

string a = "before";

@test:BeforeSuite
public function beforeSuite() {
    addInt(); // This will throw an exception and fail the function
}

@test:AfterSuite {}
public function afterSuite() {
    a = a + "after";
}

@test:AfterSuite { alwaysRun : true}
public function afterSuiteAlwaysRun() {
    test:assertEquals(a, "before");
}

@test:BeforeEach
public function beforeEach() {
    a = a + "beforeEach";
}

@test:AfterEach
public function afterEach() {
    a = a + "afterEach";
}

public function beforeFunc() {
    a = a + "before";
}

public function afterFunc() {
    a = a + "after";
}

@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function test1() {
    a = a + "test1";
}

@test:Config {
    dependsOn: [test1]
}
public function test2() {
    a = a + "test2";
}

@test:Config {}
public function test3() {
    a = a + "test3";
}