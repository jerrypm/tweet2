//
//  TweetCells.swift
//  Tweetj2
//
//  Created by Jerry on 6/13/17.
//  Copyright © 2017 Next Project. All rights reserved.
//

import LBTAComponents

class TweetCells: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            
            guard let tweet = datasourceItem as? Tweet else {return}
            
            let attributedText = NSMutableAttributedString(string: tweet.user.name, attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 12)])
            
            let usernameString = "  \n\(tweet.user.username)\n"
            
            
            attributedText.append(NSAttributedString(string: usernameString, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 12), NSForegroundColorAttributeName: UIColor.gray]))
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 4
            
            let renge = NSMakeRange(0, attributedText.string.characters.count)
            
            
            attributedText.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: renge)

            
            attributedText.append(NSAttributedString(string: tweet.massage, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 12)]))
            
            
            meassageTextView.attributedText = attributedText
    
        }
    }
    
    
    let meassageTextView: UITextView = {
        let tv = UITextView()
        tv.text = "SOME NEED REST"
        tv.backgroundColor = .clear
        return tv
    }()
    
    let ProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .brown
        imageView.image = #imageLiteral(resourceName: "SketchGuru")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    let replyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "left2-32"), for: .normal)
        button.tintColor = .red
        return button
    }()
    
    let retweetButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "cancer-32").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let loveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "autumn-32"), for: .normal)
        button.backgroundColor = .yellow
        return button
    }()
    
    let directMButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "align_justify-24").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        backgroundColor = .white
        
        addSubview(ProfileImageView)
        addSubview(meassageTextView)
        
        addSubview(replyButton)
        addSubview(retweetButton)
        addSubview(loveButton)
        addSubview(directMButton)
        
        
        ProfileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        meassageTextView.anchor(topAnchor, left: ProfileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
//        replyButton.anchor(nil, left: meassageTextView.leftAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        setupBottomButton()
        
        }
    
    fileprivate func setupBottomButton(){
        let replyButtonContainerVew = UIView()
//        replyButtonContainerVew.backgroundColor = .red
        
        let retweetContainerView = UIView()
//        retweetContainerView.backgroundColor = .yellow
        
        let loveContainerView = UIView()
//        loveContainerView.backgroundColor = .green
        
        let directMessageView = UIView()
//        directMessageView.backgroundColor = .purple
        
        let buttonStackView = UIStackView(arrangedSubviews: [replyButtonContainerVew, retweetContainerView, loveContainerView, directMessageView])
        buttonStackView.axis = .horizontal
        buttonStackView.distribution = .fillEqually
        
        addSubview(buttonStackView)
        buttonStackView.anchor(nil, left: meassageTextView.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        addSubview(replyButton)
        addSubview(retweetButton)
        addSubview(loveButton)
        addSubview(directMButton)
        
        
        replyButton.anchor(replyButtonContainerVew.topAnchor, left: replyButtonContainerVew.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        retweetButton.anchor(retweetContainerView.topAnchor, left: retweetContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        loveButton.anchor(loveContainerView.topAnchor, left: loveContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        directMButton.anchor(directMessageView.topAnchor, left: directMessageView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
    }
}


class JTweetys: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor (r: 123, g: 234, b: 10)
    }
}
