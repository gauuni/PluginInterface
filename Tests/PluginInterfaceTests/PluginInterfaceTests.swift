import XCTest
@testable import PluginInterface

final class PluginInterfaceTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PluginInterface().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
