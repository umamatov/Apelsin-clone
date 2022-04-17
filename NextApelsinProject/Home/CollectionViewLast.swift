//
//  CollectionViewLast.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 14/04/22.
//

import UIKit

class CollectionViewLast: UICollectionViewCell {
    
    static let indetifier = "CollectionViewLast"

    
     let homeview : UIView = {
         let homeview = UIView()
         homeview.translatesAutoresizingMaskIntoConstraints=false
         homeview.backgroundColor = .yellow
         return homeview
     }()
    
    var lastView: UIView = {
        let lastView = UIView()
        lastView.translatesAutoresizingMaskIntoConstraints=false
        lastView.backgroundColor = .white
        lastView.layer.cornerRadius = 30
        return lastView
    }()
    
    var akfaImage: UIImageView = {
        let akfaImage = UIImageView()
        akfaImage.translatesAutoresizingMaskIntoConstraints=false
        akfaImage.image = UIImage(named: "akfaa_image")
        return akfaImage
    }()
    
    var medlineLabel: UILabel = {
        let medlineLabel = UILabel()
        medlineLabel.translatesAutoresizingMaskIntoConstraints=false
        medlineLabel.font = UIFont.systemFont(ofSize: 16)
        medlineLabel.textColor = .black
        medlineLabel.text = "Akfa Medline"
        return medlineLabel
    }()
    
    var mapImage: UIImageView = {
        let mapImage = UIImageView()
        mapImage.translatesAutoresizingMaskIntoConstraints=false
        mapImage.image = UIImage(named: "map_image")
        return mapImage
    }()
    
    var kmLabel: UILabel = {
        let kmLabel = UILabel()
        kmLabel.translatesAutoresizingMaskIntoConstraints=false
        kmLabel.font = UIFont.systemFont(ofSize: 13)
        kmLabel.textColor = .systemGray
        kmLabel.text = "0.53km"
        return kmLabel
    }()
    
   
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        contentView.addSubview(homeview)
        homeview.frame = contentView.bounds
        
        homeview.addSubview(lastView)
        lastView.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 5).isActive=true
        lastView.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 5).isActive=true
        lastView.heightAnchor.constraint(equalToConstant: 90).isActive=true
        lastView.widthAnchor.constraint(equalToConstant: 260).isActive=true
        lastView.layer.cornerRadius = 10
        
        lastView.addSubview(akfaImage)
        akfaImage.topAnchor.constraint(equalTo:lastView.topAnchor,constant: 10).isActive=true
        akfaImage.leftAnchor.constraint(equalTo: lastView.leftAnchor,constant: 10).isActive=true
        akfaImage.heightAnchor.constraint(equalToConstant: 70).isActive=true
        akfaImage.widthAnchor.constraint(equalToConstant: 90).isActive=true
        
        lastView.addSubview(medlineLabel)
        medlineLabel.topAnchor.constraint(equalTo: lastView.topAnchor,constant: 20).isActive=true
        medlineLabel.leftAnchor.constraint(equalTo: akfaImage.rightAnchor,constant: 10).isActive=true
        
        lastView.addSubview(mapImage)
        mapImage.bottomAnchor.constraint(equalTo: lastView.bottomAnchor,constant: -10).isActive=true
        mapImage.leftAnchor.constraint(equalTo: akfaImage.rightAnchor,constant: 10).isActive=true
        
        lastView.addSubview(kmLabel)
        kmLabel.bottomAnchor.constraint(equalTo: lastView.bottomAnchor,constant: -11).isActive=true
        kmLabel.leftAnchor.constraint(equalTo: mapImage.rightAnchor,constant: 1).isActive=true

        
}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


