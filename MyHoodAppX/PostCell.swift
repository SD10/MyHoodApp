//
//  PostCell.swift
//  MyHoodAppX
//
//  Created by Steven on 3/28/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
