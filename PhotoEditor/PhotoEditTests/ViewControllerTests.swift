import XCTest
@testable import Photo_red

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        viewController.loadViewIfNeeded()
    }
    
    override func tearDown() {
        viewController = nil
        super.tearDown()
    }
    
    func testEditAction() {
        let navigationController = MockNavigationController(rootViewController: viewController)
        UIApplication.shared.keyWindow?.rootViewController = navigationController
        viewController.editAction(self)
        XCTAssertTrue(navigationController.pushedViewController is EditorViewController)
    }
    
}

class MockNavigationController: UINavigationController {
    
    var pushedViewController: UIViewController?   
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushedViewController = viewController
    }

}

class MockImagePicker: ImagePicker {
    
    var presented = false  
    override func present(from view: UIView) {
        presented = true
    }
    
}