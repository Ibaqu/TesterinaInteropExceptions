import ballerina/test;

@test:Config{
    dataProvider: invalidDataGen
}
function test_InvalidDataProvider(string result) {
    int|error resultErr = trap result.cloneWithType(int);
}

function invalidDataGen() returns (int[][]) {
    return [[1]];
}
