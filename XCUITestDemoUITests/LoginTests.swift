import XCTest

class LoginTests: XCTestCase {
    
    lazy var app = XCUIApplication()
    
    override func setUp() {
        app.launch()
    }
    
    func testApp_LoadsUp() {
        sleep(3)
    }
    
    override func tearDown() {
        app.terminate()
    }
    
}
