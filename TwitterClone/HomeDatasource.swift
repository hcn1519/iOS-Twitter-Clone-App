//
//  HomeDatasource.swift
//  TwitterClone
//
//  Created by 홍창남 on 2017. 2. 21..
//  Copyright © 2017년 홍창남. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    
    let users: [User] = {
        let brianUser = User(name: "Changnam Hong", username: "@Changnam", bioText: "Hello world, This is my twitter clone app for learnig. Thank you for seeing this message.", profileImage: #imageLiteral(resourceName: "profile_img"))
        let anotherUser = User(name: "Ryan", username: "@city", bioText: "Hello world, This is my twitter clone app for learnig. Thank you for seeing this message. urna mauris cursus lorem, eu fringilla lacus ante non est. Nullam vitae feugiat libero, eu consequat sem. Proin tincidunt neque eros", profileImage: #imageLiteral(resourceName: "profile2"))
        
        let kindleCourseUser = User(name: "Kindle user", username: "@Kindle Fire", bioText: "Ut sed tortor luctus, gravida nibh eget, volutpat odio. Proin rhoncus, sapien mollis luctus hendrerit, orci dui viverra metus, et cursus nulla mi sed elit. Vestibulum condimentum, mauris a mattis vestibulum, urna mauris cursus lorem, eu fringilla lacus ante non est. Nullam vitae feugiat libero, eu consequat sem. Proin tincidunt neque eros. Duis faucibus blandit ligula, mollis commodo risus sodales at. Sed rutrum et turpis vel blandit. Nullam ornare congue massa, at commodo nunc venenatis varius. Praesent mollis nisi at vestibulum aliquet. Sed sagittis congue urna ac consectetur.", profileImage: #imageLiteral(resourceName: "profile3"))
        
        return [brianUser, anotherUser, kindleCourseUser]
    }()
    
//    let words = ["user1", "user2", "user3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
