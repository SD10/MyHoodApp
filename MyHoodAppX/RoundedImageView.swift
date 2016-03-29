//
//  RoundedImageView.swift
//  MyHoodAppX
//
//  Created by Steven on 3/29/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.size.width/2
        self.clipsToBounds = true
    }
}
