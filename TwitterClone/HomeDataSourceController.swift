//
//  HomeDataSourceController.swift
//  TwitterClone
//
//  Created by 홍창남 on 2017. 2. 21..
//  Copyright © 2017년 홍창남. All rights reserved.
//
import LBTAComponents

class HomeDataSourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeDatasource = HomeDataSource()
        self.datasource = homeDatasource
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}
