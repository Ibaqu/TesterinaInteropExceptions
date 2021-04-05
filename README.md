# Testerina Exceptions

## Division by Zero
Divide by Zero locally
Execution of tests continue

```
Compiling source
        mohamedaquibzulfikar/Interop:0.1.0

Running Tests

        Interop

                [fail] test3:

                    {ballerina}DivisionByZero {"message":" / by zero"}

                        at mohamedaquibzulfikar.Interop.0_1_0.tests.main_test:intDiv(tests/main_test.bal:21)
                        mohamedaquibzulfikar.Interop.0_1_0.tests.main_test:test3(tests/main_test.bal:17)


                0 passing
                1 failing
                0 skipped

error: there are test failures
```

## Division by Zero interop
Throws exception and stops test execution

```
Compiling source
        mohamedaquibzulfikar/Interop:0.1.0

Running Tests

        Interop
~ [Ibaqu] Divide Int called
~ [Ibaqu] Divide called. Dividing by Zero
error: java.lang.ArithmeticException: / by zero
error: there are test failures
```

## Throw a NullPointerException directly from the interop
Throws exception and stops the test execution

```
Compiling source
        mohamedaquibzulfikar/Interop:0.1.0

Running Tests

        Interop
~ [Ibaqu] call called. Throwning exception
error: java.lang.NullPointerException
error: there are test failures
```

## Classes not packed in the JAR 

If function is to return a value : 
- Returns the NoClassDefFound error

```
Compiling source
        mohamedaquibzulfikar/Interop:0.1.0

Running Tests

        Interop
~ [Ibaqu] Return Add Int called

                [fail] test2:

                    The test failed normally

                        at ballerina.test.0_0_0:createBallerinaError(assert.bal:43)
                        ballerina.test.0_0_0:assertFail(assert.bal:125)
                        mohamedaquibzulfikar.Interop.0_1_0.tests.main_test:test2(tests/main_test.bal:12)

                [fail] test7:

                    java.lang.NoClassDefFoundError {"message":"Aquib","cause":error("java.lang.ClassNotFoundException",message="Aquib")}

                        at mohamedaquibzulfikar.Interop.0_1_0:returnAddInt(main.bal:22)
                        mohamedaquibzulfikar.Interop.0_1_0.tests.main_test:test7(tests/main_test.bal:44)


                0 passing
                2 failing
                0 skipped

error: there are test failures
```

else 
- Doesnt print any sort of error. Just blank

```
Compiling source
        mohamedaquibzulfikar/Interop:0.1.0

Running Tests

        Interop
~ [Ibaqu] Add Int called

                [fail] test2:

                    The test failed normally

                        at ballerina.test.0_0_0:createBallerinaError(assert.bal:43)
                        ballerina.test.0_0_0:assertFail(assert.bal:125)
                        mohamedaquibzulfikar.Interop.0_1_0.tests.main_test:test2(tests/main_test.bal:12)

                [pass] test6

                1 passing
                1 failing
                0 skipped

error: there are test failures
```

Execution continues normally
