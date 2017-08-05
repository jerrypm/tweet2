//
//  tweet.swift
//  Tweetj2
//
//  Created by Jerry on 6/18/17.
//  Copyright © 2017 Next Project. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Tweet {
    let user: User
    let massage: String
    

    init(json: JSON) {
        let userJson = json["user"]
        self.user = User(json: userJson)
        
        self.massage = json["message"].stringValue
        
        
    }
    
}
