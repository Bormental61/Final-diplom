import XCTest

class ImagePickerUITests: XCTestCase {

    var app: XCUIApplication!
       
       override func setUp() {
           super.setUp()
           app = XCUIApplication()
           app.launch()
       }
       
       override func tearDown() {
           app = nil
           super.tearDown()
       }
       
       func testPresentActionSheet() {
           let addButton = app.buttons["addButton"]
           addButton.tap()
       }
       
       func testSelectPhotoFromLibrary() {
           let addButton = app.buttons["addButton"]
           addButton.tap()
           app.buttons["Photo library"].tap()
       }

}