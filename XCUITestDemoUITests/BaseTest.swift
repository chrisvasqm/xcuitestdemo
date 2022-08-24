import XCTest

class BaseTest : XCTestCase {
    internal lazy var app = XCUIApplication()
    
    override func setUp() {
        app.launch()
    }
    
    override func tearDown() {
        app.terminate()
    }
    
}
