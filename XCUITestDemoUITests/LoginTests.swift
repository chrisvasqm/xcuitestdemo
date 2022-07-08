import XCTest

class LoginTests: BaseTest {
    lazy var login = Login(app: app)
    
    func testLogin_InvalidCredentials_ShowsAlertDialog() {
        login.signIn(username: "wrongUsername", password: "wrongPassword")
        
        assert(login.hasInvalidCredentials())
    }
    
    func testLogin_ValidCredentials_RedirectToNextScreen() {
        login.signIn(username: "Chris", password: "pass123")
        let home = Home(app: app)
        
        assert(home.isLoggedIn())
    }
    
}
