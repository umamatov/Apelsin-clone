//
//  CollectionviewNext.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 14/04/22.
//

import UIKit

class CollectionviewNext: UICollectionViewCell {
    
    static let indetifier = "CollectionviewNext"

    
     let homeview : UIView = {
         let homeview = UIView()
         homeview.translatesAutoresizingMaskIntoConstraints=false
         homeview.backgroundColor = .yellow
         return homeview
     }()
    
    var indigoView: UIView = {
        let indigoView = UIView()
        indigoView.translatesAutoresizingMaskIntoConstraints=false
        indigoView.backgroundColor = UIColor.systemIndigo
        indigoView.layer.cornerRadius = 30
        return indigoView
    }()
    
    var whiteImage: UIImageView = {
        let whiteImage = UIImageView()
        whiteImage.translatesAutoresizingMaskIntoConstraints=false
        whiteImage.image = UIImage(named: "home_image-1")
        return whiteImage
    }()
    
    var myhouseLabel: UILabel = {
        let myhouseaLabel = UILabel()
        myhouseaLabel.translatesAutoresizingMaskIntoConstraints=false
        myhouseaLabel.font = UIFont.systemFont(ofSize: 25)
        myhouseaLabel.textColor = .white
        myhouseaLabel.text = "My Home"
        return myhouseaLabel
    }()
    
    var seeLabel: UILabel = {
        let seeLabel = UILabel()
        seeLabel.translatesAutoresizingMaskIntoConstraints=false
        seeLabel.font = UIFont.systemFont(ofSize: 15)
        seeLabel.textColor = .white
        seeLabel.text = "See more"
        return seeLabel
    }()
    
    var playImage: UIImageView = {
        let playImage = UIImageView()
        playImage.translatesAutoresizingMaskIntoConstraints=false
        playImage.image = UIImage(named: "play_image")
        return playImage
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        contentView.addSubview(homeview)
        homeview.frame = contentView.bounds
        
        homeview.addSubview(indigoView)
        indigoView.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 5).isActive=true
        indigoView.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 5).isActive=true
        indigoView.heightAnchor.constraint(equalToConstant: 130).isActive=true
        indigoView.widthAnchor.constraint(equalToConstant: 120).isActive=true
        indigoView.layer.cornerRadius = 10
        
        indigoView.addSubview(whiteImage)
        whiteImage.topAnchor.constraint(equalTo: indigoView.topAnchor,constant: 10).isActive=true
        whiteImage.rightAnchor.constraint(equalTo: indigoView.rightAnchor,constant: -10).isActive=true
        whiteImage.heightAnchor.constraint(equalToConstant: 40).isActive=true
        whiteImage.widthAnchor.constraint(equalToConstant: 40).isActive=true
        
        
        indigoView.addSubview(myhouseLabel)
        myhouseLabel.topAnchor.constraint(equalTo: whiteImage.bottomAnchor,constant: 1).isActive=true
        myhouseLabel.leftAnchor.constraint(equalTo: indigoView.leftAnchor,constant: 10).isActive=true
        
        indigoView.addSubview(seeLabel)
        seeLabel.bottomAnchor.constraint(equalTo: indigoView.bottomAnchor,constant: -10).isActive=true
        seeLabel.leftAnchor.constraint(equalTo: indigoView.leftAnchor,constant: 17).isActive=true
        
        indigoView.addSubview(playImage)
        playImage.bottomAnchor.constraint(equalTo: indigoView.bottomAnchor,constant: -8).isActive=true
        playImage.leftAnchor.constraint(equalTo: seeLabel.rightAnchor,constant: 1).isActive=true
        playImage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        playImage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        
        
}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


