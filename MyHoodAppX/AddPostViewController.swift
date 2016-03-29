//
//  AddPostViewController.swift
//  MyHoodAppX
//
//  Created by Steven on 3/29/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var postImage: RoundedImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func checkTextField() -> Bool {
        if titleTextField.text!.isEmpty && descriptionTextField.text!.isEmpty {
            return false
        } else {
            return true
        }
    }
    
    func showErrorMessage(title: String, message: String) {
        let errorMessage = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        errorMessage.addAction(okAction)
        presentViewController(errorMessage, animated: true, completion: nil)
    }
    
    @IBAction func makePostButtonPressed(sender: AnyObject) {
        if checkTextField() {
            if let image = postImage.image {
                let imagePath = DataService.instance.saveImageAndCreatePath(image)
                let title = titleTextField.text!
                let desc = descriptionTextField.text!
                let post = Post(imagePath: imagePath, title: title, description: desc)
                DataService.instance.addPost(post)
                dismissViewControllerAnimated(true, completion: nil)
            }
        } else {
            self.showErrorMessage("Error", message: "All fields are required")
        }
    }

    @IBAction func cancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImage.image = image
    }
    
    @IBAction func addPicButtonPressed(sender: UIButton) {
        presentViewController(imagePicker, animated: true, completion: nil)
        sender.setTitle("", forState: .Normal)
    }

}
