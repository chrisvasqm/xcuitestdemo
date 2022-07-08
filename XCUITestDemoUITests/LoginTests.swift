import XCTest

class LoginTests: BaseTest {
    
    func testLogin_InvalidCredentials_ShowsAlertDialog() {
        let login = LoginScreen(app: app)
        login.signIn(username: "wrongUsername", password: "wrongPassword")
        
        XCTAssert(login.hasInvalidCredentials())
    }
    
    func testLogin_ValidCredentials_RedirectToNextScreen() {
        let login = LoginScreen(app: app)
        login.signIn(username: "Chris", password: "pass123")
        let home = HomeScreen(app: app)
        
        XCTAssert(home.isLoggedIn())
    }
    
}
