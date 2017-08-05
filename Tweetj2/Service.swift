//
//  Service.swift
//  Tweetj2
//
//  Created by Jerry on 7/5/17.
//  Copyright © 2017 Next Project. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    static let sharedInstance = Service()
    
    func fetchHomeFeed(coompletion: @escaping (HomeDatasource) -> ()) {
        
        let request: APIRequest<HomeDatasource, JSONError> = tron.request("/twitter/home")
        
        request.perform(withSuccess: { (homeDatasource) in
            
            coompletion(homeDatasource)
            
            
        }) { (err) in
            print("Failed Our Json...", err)
        }
    }
    
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print("Json Error")
        }
    }
    
}
