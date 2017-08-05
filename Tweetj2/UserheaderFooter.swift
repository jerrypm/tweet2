//
//  class.swift
//  Tweetj2
//
//  Created by Jerry on 5/14/17.
//  Copyright © 2017 Next Project. All rights reserved.
//

import LBTAComponents

let TweetBlue = UIColor(r: 10, g: 120, b: 100)

class UserFooter: DatasourceCell {
    
    let textlabel: UILabel = {
        let label = UILabel()
        label.text = "Show More"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    override func setupViews() {
        super.setupViews()
        
        let whiteBackgroundColor = UIView()
        whiteBackgroundColor.backgroundColor = .white
        
        
//        backgroundColor = .white
        
//        separatorLineView.isHidden = false
//        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(whiteBackgroundColor)
        addSubview(textlabel)
        
        whiteBackgroundColor.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        textlabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
//        backgroundColor = UIColor (r: 115, g: 184, b: 230)
    }
}

class UserHeader: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Who can Follow Me"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor (r: 13, g: 12, b: 120)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
//        backgroundColor = .clear
        
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}

