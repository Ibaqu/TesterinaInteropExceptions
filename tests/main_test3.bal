import ballerina/test;

@test:Config {}
public function test_ThrowNPE() {
    call();
    test:assertEquals(1, 1);
}

@test:Config {}
public function test_NoClassDefFoundInJava() {
    addInt();
    test:assertEquals(1, 1);
}

@test:Config {}
public function test_NoClassDefFoundInJavaReturnValue() {
    int a = returnAddInt();
    test:assertEquals(a, 7);
}