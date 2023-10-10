import ballerina/log;
import ballerina/http;

configurable int port = ?;

service / on new http:Listener(port) {

    function init() {
        log:printInfo("service initialized, listening on port " + port.toString() + "...");
    }
    // This function responds with `string` value `Hello, World!` to HTTP GET requests.
    resource function get greeting() returns string {
        return "Hello, World!";
    }
}
