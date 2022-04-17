//
//  MycollectionView.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 14/04/22.
//

import UIKit

class MyCollectionViewCell15: UICollectionViewCell {
    
    static let indetifier = "MyCollectionViewCell15"

    
     let homeview : UIView = {
         let homeview = UIView()
         homeview.translatesAutoresizingMaskIntoConstraints=false
         homeview.backgroundColor = .yellow
         return homeview
     }()
    
    var appView: UIView = {
        let appView = UIView()
        appView.translatesAutoresizingMaskIntoConstraints=false
        appView.backgroundColor = .white
        appView.layer.cornerRadius = 30
        return appView
    }()
    
    var visaImage: UIImageView = {
        let visaImage = UIImageView()
        visaImage.translatesAutoresizingMaskIntoConstraints=false
        visaImage.image = UIImage(named: "visa_image")
        return visaImage
    }()
    
    var directLabel: UILabel = {
        let directLabel = UILabel()
        directLabel.translatesAutoresizingMaskIntoConstraints=false
        directLabel.font = UIFont.systemFont(ofSize: 14)
        directLabel.textColor = .orange
        directLabel.text = "Direct"
        return directLabel
    }()
    
    var alertLabel: UILabel = {
        let alertLabel = UILabel()
        alertLabel.translatesAutoresizingMaskIntoConstraints=false
        alertLabel.font = UIFont.systemFont(ofSize: 11)
        alertLabel.textColor = .black
        alertLabel.text = "VISA Direct"
        alertLabel.numberOfLines = 2
        return alertLabel
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        contentView.addSubview(homeview)
        homeview.frame = contentView.bounds
        
        homeview.addSubview(appView)
        appView.topAnchor.constraint(equalTo: homeview.topAnchor,constant: -40).isActive=true
        appView.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        appView.heightAnchor.constraint(equalToConstant: 95).isActive=true
        appView.widthAnchor.constraint(equalToConstant: 85).isActive=true
        appView.layer.cornerRadius = 10
        
        appView.addSubview(visaImage)
        visaImage.centerXAnchor.constraint(equalTo: appView.centerXAnchor,constant: 0).isActive=true
        visaImage.centerYAnchor.constraint(equalTo: appView.centerYAnchor,constant: -20).isActive=true
//        visaImage.heightAnchor.constraint(equalToConstant: 50).isActive=true
//        visaImage.widthAnchor.constraint(equalToConstant: 30).isActive=true
        
        appView.addSubview(directLabel)
        directLabel.topAnchor.constraint(equalTo: visaImage.bottomAnchor,constant: -15).isActive=true
        directLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 22).isActive=true
        
        appView.addSubview(alertLabel)
        alertLabel.bottomAnchor.constraint(equalTo: appView.bottomAnchor,constant: -10).isActive=true
        alertLabel.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true
        alertLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 20).isActive=true
        alertLabel.centerXAnchor.constraint(equalTo: appView.centerXAnchor).isActive=true
}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


