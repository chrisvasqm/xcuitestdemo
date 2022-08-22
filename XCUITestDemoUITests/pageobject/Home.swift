import XCTest

class Home : PageObject {
    internal let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func isLoggedIn() -> Bool {
        let loginMessage = app.staticTexts["You're now logged in as @Chris"]
        
        return loginMessage.exists
    }
    
}
