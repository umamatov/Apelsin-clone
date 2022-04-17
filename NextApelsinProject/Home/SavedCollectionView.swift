//
//  SavedCollectionView.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 14/04/22.
//

import UIKit

class SavedCollectionView: UICollectionViewCell {
    
    static let indetifier = "SavedCollectionView"

    
     let homeview : UIView = {
         let homeview = UIView()
         homeview.translatesAutoresizingMaskIntoConstraints=false
         homeview.backgroundColor = .yellow
         return homeview
     }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        contentView.addSubview(homeview)
        homeview.frame = contentView.bounds
        
        
        
        
}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


