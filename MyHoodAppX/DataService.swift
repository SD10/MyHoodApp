//
//  DataService.swift
//  MyHoodAppX
//
//  Created by Steven on 3/29/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    static let instance = DataService()
    
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post] {
        return _loadedPosts
    }
    
    func savePosts() {
        
    }
    
    func loadPosts() {
        
    }
    
    func saveImageAndCreatePath(image: UIImage) {
        
    }
    
    func imageForPath(path: String) {
    
    }
    
    func addPost(post: Post) {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }
}