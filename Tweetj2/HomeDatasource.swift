//
//  HomeData.swift
//  Tweetj2
//
//  Created by Jerry on 5/14/17.
//  Copyright © 2017 Next Project. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON


class HomeDatasource: Datasource, JSONDecodable {
    
    let users: [User]
    
    required init(json: JSON) throws {
        //            print("Now Ready to parse Json: \n", json)
        
        let usersJsonArray = json["users"].array
        
        self.users = usersJsonArray!.map({return User(json: $0)})
        
        let tweetsJsonArray = json["tweets"].array
        self.tweets = tweetsJsonArray!.map{Tweet(json: $0)}

        
    }
    
    
    let tweets: [Tweet]
    
    //let words = ["user", "user2", "user3", "user4"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCells.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
        
    }
    
}

