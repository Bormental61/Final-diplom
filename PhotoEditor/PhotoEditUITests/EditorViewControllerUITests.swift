import XCTest

class EditorViewControllerUITests: XCTestCase {

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
      
      func testFilterActions() {

          let editorViewController = app.otherElements["EditorViewController"]
          let imageView = editorViewController.images["imageView"]
          let filterView = editorViewController.otherElements["filterView"]

          imageView.tap()
          app.buttons["Action 1"].tap()

          let filterColor = filterView.value as! UIColor
          XCTAssertEqual(filterColor, UIColor.blue)
          app.buttons["Action 2"].tap()

          filterView.value as! UIColor
          XCTAssertEqual(filterColor, UIColor.purple)         
      }
      
  }