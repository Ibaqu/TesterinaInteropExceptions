import ballerina/jballerina.java;

public function main() {
    addInt();
}

public isolated function divideInt() = @java:Method {
    name : "divideInt",
    'class: "Ibaqu"
} external;

public isolated function call()  = @java:Method {
    name: "call",
    'class: "Ibaqu"
} external;


public isolated function addInt() = @java:Method {
    name: "addInt",
    'class: "Ibaqu"
} external;

public isolated function returnAddInt() returns int = @java:Method {
    name: "returnAddInt",
    'class: "Ibaqu"
} external;
    

