import XCTest

class Login : PageObject {
    internal let app: XCUIApplication
    private let fieldUsername: XCUIElement
    private let fieldPassword: XCUIElement
    private let buttonLogin: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        fieldUsername = app.textFields["Username"]
        fieldPassword = app.secureTextFields["Password"]
        buttonLogin = app.buttons["Login"]
    }
    
    func signIn(username: String, password: String) -> Home {
        fieldUsername.tap()
        fieldUsername.typeText(username)
        
        fieldPassword.tap()
        fieldPassword.typeText(password)

        buttonLogin.tap()
        
        return Home(app: app)
    }
    
    func hasInvalidCredentials() -> Bool {
        let alert = app.alerts["Woops!"]
        return alert.exists
    }

}
