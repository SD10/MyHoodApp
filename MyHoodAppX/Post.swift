//
//  Post.swift
//  MyHoodAppX
//
//  Created by Steven on 3/28/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import Foundation

class Post {
    private var imagePath: String
    private var title: String
    private var postDescription: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDescription = description
    }
}