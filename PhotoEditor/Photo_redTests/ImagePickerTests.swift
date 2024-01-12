import XCTest
@testable import Photo_red

class ImagePickerTests: XCTestCase {
    
    var imagePicker: ImagePicker!
    var mockPresentationController: MockViewController!
    var mockDelegate: MockImagePickerDelegate!
    
    override func setUp() {
        super.setUp()
        mockPresentationController = MockViewController()
        mockDelegate = MockImagePickerDelegate()
        imagePicker = ImagePicker(presentationController: mockPresentationController, delegate: mockDelegate)
    }
    
    override func tearDown() {
        imagePicker = nil
        mockPresentationController = nil
        mockDelegate = nil
        super.tearDown()
    }
    
    func testPresentMethod() {
        let mockSourceView = UIView()
        imagePicker.present(from: mockSourceView) 
    }
    
    func testImagePickerControllerDidCancel() {
        let picker = UIImagePickerController()
        imagePicker.imagePickerControllerDidCancel(picker)
    }
    
    func testImagePickerControllerDidFinishPickingMediaWithInfo() {
        let picker = UIImagePickerController()
        let info: [UIImagePickerController.InfoKey: Any] = [.editedImage: UIImage()]
        imagePicker.imagePickerController(picker, didFinishPickingMediaWithInfo: info)
    }

}

class MockViewController: UIViewController {
   
}

class MockImagePickerDelegate: ImagePickerDelegate {

    var didSelectImageCalled = false
    var selectedImage: UIImage?
  
    func didSelect(image: UIImage?) {
        didSelectImageCalled = true
        selectedImage = image
    }
    
}