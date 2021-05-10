import ballerina/test;

@test:Config {}
public function test_DivideByZeroInJava() {
    divideInt();
    test:assertEquals(1, 1);
}

@test:Config {}
public function test_DivideByZeroInJavaAndReturn() {
    int a = divideIntReturn(0);
    test:assertEquals(1, 1);
}
