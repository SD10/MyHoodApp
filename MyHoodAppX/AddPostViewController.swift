//
//  AddPostViewController.swift
//  MyHoodAppX
//
//  Created by Steven on 3/29/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var postImage: RoundedImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postImage.layer.cornerRadius = postImage.frame.size.width/2
        postImage.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func makePostButtonPressed(sender: AnyObject) {
        
    }

    @IBAction func cancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicButtonPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
    }

}
