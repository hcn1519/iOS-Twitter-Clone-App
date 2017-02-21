//
//  HomeDatasource.swift
//  TwitterClone
//
//  Created by 홍창남 on 2017. 2. 21..
//  Copyright © 2017년 홍창남. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    let words = ["user1", "user2", "user3"]
    
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
        return words[indexPath.item]
    }
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
}
