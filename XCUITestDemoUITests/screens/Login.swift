import XCTest

class Login: Screen {
    internal let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func signIn(username: String, password: String) -> Home {
        let fieldUsername = app.textFields["Username"]
        fieldUsername.tap()
        fieldUsername.typeText(username)

        let fieldPassword = app.secureTextFields["Password"]
        fieldPassword.tap()
        fieldPassword.typeText(password)

        let buttonLogin = app.buttons["Login"]
        buttonLogin.tap()
        
        return Home(app: app)
    }
    
    func hasInvalidCredentials() -> Bool {
        let alert = app.alerts["Woops!"]
        return alert.exists
    }

}
