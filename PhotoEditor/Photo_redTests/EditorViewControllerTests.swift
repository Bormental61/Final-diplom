import XCTest
@testable import Photo_red

class EditorViewControllerTests: XCTestCase {
    
    var editorViewController: EditorViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        editorViewController = storyboard.instantiateViewController(withIdentifier: "EditorViewController") as? EditorViewController
        editorViewController.loadViewIfNeeded()
    }
    
    override func tearDown() {
        editorViewController = nil
        super.tearDown()
    }
    
    func testInitialSetup() {
        let initialBackgroundColor = editorViewController.filterView.backgroundColor
        XCTAssertEqual(initialBackgroundColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0))
    }
    
    func testAction1() {
        editorViewController.action1(self)
        XCTAssertEqual(editorViewController.filterView.backgroundColor, UIColor.blue)
    }
    
    func testAction2() {
        editorViewController.action2(self)
        XCTAssertEqual(editorViewController.filterView.backgroundColor, UIColor.purple)
    }

}