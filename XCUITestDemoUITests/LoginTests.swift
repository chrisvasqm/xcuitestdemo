import XCTest

class LoginTests: XCTestCase {
    
    lazy var app = XCUIApplication()
    
    override func setUp() {
        app.launch()
    }
    
    func testLogin_InvalidCredentials_ShowsAlertDialog() {
        let login = LoginScreen(app: app)
        login.signIn(username: "wrongUsername", password: "wrongPassword")
        
        XCTAssert(login.hasInvalidCredentials())
    }
    
    override func tearDown() {
        app.terminate()
    }
    
}
