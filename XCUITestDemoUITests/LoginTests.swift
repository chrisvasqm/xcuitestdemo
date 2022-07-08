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
    
    func testLogin_InvalidCredentials_ShowsAlertDialog() {
        let username = app.textFields["Username"]
        username.tap()
        username.typeText("wrongUsername")

        let password = app.secureTextFields["Password"]
        password.tap()
        password.typeText("wrongPassword")

        let buttonLogin = app.buttons["Login"]
        buttonLogin.tap()
        
        let alert = app.alerts["Woops!"]
        XCTAssert(alert.exists)
    }
    
    override func tearDown() {
        app.terminate()
    }
    
}
