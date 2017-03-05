//
//  Cell.swift
//  TwitterClone
//
//  Created by 홍창남 on 2017. 2. 21..
//  Copyright © 2017년 홍창남. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    
    let textLabel: UILabel = {
        
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.systemFont(ofSize: 16)
        
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
class UserFooter: DatasourceCell {
    let textLabel: UILabel = {
        let twitterBlue = UIColor(r: 61, g: 167, b: 244)
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = twitterBlue
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}

