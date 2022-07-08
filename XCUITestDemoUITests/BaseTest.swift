import Foundation
import XCTest

class BaseTest: XCTestCase {
    lazy var app = XCUIApplication()
    
    override func setUp() {
        app.launch()
    }
    
    override func tearDown() {
        app.terminate()
    }
    
}
