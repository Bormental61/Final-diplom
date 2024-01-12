import XCTest

class ViewControllerUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp(){
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    func testAddButton_Tapping_PresentImagePicker(){

        let addButton = app.buttons["addButton"]
        addButton.tap()
        
        let imagePicker = app.sheets["Image Picker"]
        XCTAssertTrue(imagePicker.exists)

    }
    
}