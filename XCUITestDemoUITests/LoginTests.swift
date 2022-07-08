import XCTest

class LoginTests: BaseTest {
    
    func testLogin_InvalidCredentials_ShowsAlertDialog() {
        let login = LoginScreen(app: app)
        login.signIn(username: "wrongUsername", password: "wrongPassword")
        
        XCTAssert(login.hasInvalidCredentials())
    }
    
}
