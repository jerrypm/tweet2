//
//  Userclass.swift
//  Tweetj2
//
//  Created by Jerry on 6/1/17.
//  Copyright © 2017 Next Project. All rights reserved.
//

import LBTAComponents

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            
            guard let user = datasourceItem as? User else {return}
            nameLabel.text = user.name
            usernameLabel.text = user.username
            bioTextView.text = user.biotext
            ProfileImageView.image = user.profileImage
            
            //            print(datasourceItem)
        }
    }
    
    let ProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .brown
        //        imageView.image = #imageLiteral(resourceName: "SketchGuru")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true  
        return imageView
        
    }()
    
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Jeri Purnama Maulid"
        //label.backgroundColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = TweetBlue
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@luffyselah"
        // label.backgroundColor = .purple
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(r: 124, g: 130, b: 139)
        
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        //textView.backgroundColor = .yellow
        textView.text = "loram umbragenudud smbreguntu kmpbuiq smba hyunix zoom kmburukcion"
        textView.font = UIFont.systemFont(ofSize: 12)
        textView.backgroundColor = .clear
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = TweetBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(TweetBlue, for: .normal)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        button.setImage(#imageLiteral(resourceName: "sButton"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        return button
    }()
    
    
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .white
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(ProfileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        ProfileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(ProfileImageView.topAnchor, left: ProfileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 0)
        
        followButton.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 10, leftConstant: 0, bottomConstant: 0, rightConstant: 10, widthConstant: 120, heightConstant: 30)
        
        
    }
}

