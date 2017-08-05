//
//  homework.swift
//  Tweetj2
//
//  Created by Jerry on 5/14/17.
//  Copyright © 2017 Next Project. All rights reserved.
//

import LBTAComponents
import SwiftyJSON
import TRON

class HomeDatasourceController: DatasourceController {
    
    // === untuk auto landscape n portaroid vvvvv=========
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionViewLayout.invalidateLayout()
    }
    //====^^^^^========================================
    
    override func  viewDidLoad(){
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor (r: 187, g: 212, b: 223)
        
        setupNavigationBarItem()
 
        Service.sharedInstance.fetchHomeFeed { (homeDatasource) in
            self.datasource = homeDatasource
        }
        
    }
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    class Home: JSONDecodable {
        
        let users: [User]
        
        required init(json: JSON) throws {
            
            
            var users = [User]()            
            
            let array = json["users"].array
            for userJson in array! {
//                let name = userJson["name"].stringValue
//                let username = userJson["username"].stringValue
//                let bio = userJson["bio"].stringValue
//                
//                let user = User(name: name, username: username, biotext: bio, profileImage: UIImage())
                
                let user = User(json: userJson)
                
                users.append(user)
            }
            
            self.users = users
            
        }
    }
    
    
    
    fileprivate func fetchHomeFeed(){
        //mulai Json Fetch
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User {
            //            user.biotext
            
            let approximateWidthOfBioTextView = view.frame.width - 12 - 50 - 12
            
            let size = CGSize(width: approximateWidthOfBioTextView, height: 1000)
            
            let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 15)]
            
            let estimatedFrame = NSString(string: user.biotext) .boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            return CGSize(width: view.frame.width, height: estimatedFrame.height + 52)
        }
        
        return CGSize(width: view.frame.width, height: 120)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        if section == 1 {
            return .zero
        }
        
        return CGSize(width: view.frame.width, height: 50)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        if section == 1 {
            return .zero
        }
        
        return CGSize(width: view.frame.width, height: 50)
    }

    
}
