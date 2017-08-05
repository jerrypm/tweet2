//
//  User.swift
//  Tweetj2
//
//  Created by Jerry on 6/1/17.
//  Copyright © 2017 Next Project. All rights reserved.
//

import UIKit
import SwiftyJSON

struct User {
    let name: String
    let username: String
    let biotext: String
    let profileImage: UIImage
    
    init(json: JSON) {
        self.name = json["name"].stringValue
        self.username = json["username"].stringValue
        self.biotext = json["bio"].stringValue
        self.profileImage = UIImage()
    }
}
