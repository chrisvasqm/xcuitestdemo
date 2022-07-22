import XCTest

class Login: Screen {
    internal let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func signIn(username: String, password: String) {
        let usernameTextField = app.textFields["Username"]
        usernameTextField.tap()
        usernameTextField.typeText(username)

        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText(password)

        let buttonLogin = app.buttons["Login"]
        buttonLogin.tap()
    }
    
    func hasInvalidCredentials() -> Bool {
        let alert = app.alerts["Woops!"]
        return alert.exists
    }

}
