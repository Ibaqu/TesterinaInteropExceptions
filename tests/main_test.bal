import ballerina/test;

@test:Config {}
public function test2() {
    test:assertEquals(1, 2);
}

@test:Config {}
public function test3() {
    test:assertEquals(intDiv(0), 0, "Arithmatic exception should be thrown");
}

public function intDiv(int a) returns (int) {
    return 5/a;
}

@test:Config {
}
public function test4() {
    divideInt(); //Interoip doesnt catch the exception
    test:assertEquals(1, 1);
}

@test:Config {}
public function test5() {
    call();
    test:assertEquals(1, 1);
}

@test:Config {}
public function test6() {
    addInt();
    test:assertEquals(1, 1);
}

@test:Config {}
public function test7() {
    int a = returnAddInt();

    // check the jaava poriont of the error
    test:assertEquals(a, 7);
}
