import XCTest

class LoginTests: XCTestCase {
    
    lazy var app = XCUIApplication()
    
    override func setUp() {
        app.launch()
    }
    
    func testApp_LoadsUp() {
        let title = app.staticTexts["Login"]
        XCTAssert(title.exists)
    }
    
    override func tearDown() {
        app.terminate()
    }
    
}
