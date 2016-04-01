//
//  Post.swift
//  MyHoodAppX
//
//  Created by Steven on 3/28/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _imagePath: String!
    private var _title: String!
    private var _postDescription: String!
    private var _postStamp: String!
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDescription: String {
        return _postDescription
    }
    
    var postStamp: String {
        return _postStamp
    }
    
    init(imagePath: String, title: String, description: String, time: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDescription = description
        self._postStamp = time
    }
    
    override init() {
    
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._postDescription = aDecoder.decodeObjectForKey("description") as? String
        self._postStamp = aDecoder.decodeObjectForKey("time") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._postDescription, forKey: "description")
        aCoder.encodeObject(self._postStamp, forKey: "time")
    }
}