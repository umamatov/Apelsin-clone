//
//  CollectionViewCellWithTitle.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 15/04/22.
//

import Foundation
import UIKit

class CollectionViewCellWithTitle: UICollectionViewCell {
    
    static let indetifier = "CollectionViewCellWithTitle"

    
     let homeview : UIView = {
         let homeview = UIView()
         homeview.translatesAutoresizingMaskIntoConstraints=false
         homeview.backgroundColor = .yellow
         return homeview
     }()
    
    var indigoView: UIView = {
        let indigoView = UIView()
        indigoView.translatesAutoresizingMaskIntoConstraints=false
        indigoView.backgroundColor = UIColor.orange
        indigoView.layer.cornerRadius = 30
        return indigoView
    }()
    
    var numberLabel: UILabel = {
        let numberLabel = UILabel()
        numberLabel.translatesAutoresizingMaskIntoConstraints=false
        numberLabel.font = UIFont.systemFont(ofSize: 35)
        numberLabel.textColor = .white
        numberLabel.text = "0,35"
        return numberLabel
    }()
    
//    var smollLabel: UILabel = {
//        let smollLabel = UILabel()
//        smollLabel.translatesAutoresizingMaskIntoConstraints=false
//        smollLabel.font = UIFont.systemFont(ofSize: 20)
//        smollLabel.textColor = .white
//        smollLabel.text = "%"
//        return smollLabel
//    }()
    
    var forLabel: UILabel = {
        let forLabel = UILabel()
        forLabel.translatesAutoresizingMaskIntoConstraints=false
        forLabel.font = UIFont.systemFont(ofSize: 14)
        forLabel.textColor = .white
        forLabel.text = "for transfers between cards"
        forLabel.numberOfLines=2
        return forLabel
    }()
    
//    var cardLabel: UILabel = {
//        let cardLabel = UILabel()
//        cardLabel.translatesAutoresizingMaskIntoConstraints=false
//        cardLabel.font = UIFont.systemFont(ofSize: 14)
//        cardLabel.textColor = .white
//        cardLabel.text = "between cards"
//        return cardLabel
//    }()
    
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
        
        indigoView.addSubview(numberLabel)
        numberLabel.topAnchor.constraint(equalTo: indigoView.topAnchor,constant: 5).isActive=true
        numberLabel.leftAnchor.constraint(equalTo: indigoView.leftAnchor,constant: 10).isActive=true
        
//        indigoView.addSubview(smollLabel)
//        smollLabel.topAnchor.constraint(equalTo: indigoView.topAnchor,constant: 18).isActive=true
//        smollLabel.leftAnchor.constraint(equalTo: numberLabel.rightAnchor,constant: 3).isActive=true
//        
        indigoView.addSubview(forLabel)
        forLabel.topAnchor.constraint(equalTo: numberLabel.bottomAnchor,constant: 3).isActive=true
        forLabel.leftAnchor.constraint(equalTo: indigoView.leftAnchor,constant: 7).isActive=true
        forLabel.rightAnchor.constraint(equalTo: indigoView.rightAnchor,constant: -7).isActive=true
        
//        indigoView.addSubview(cardLabel)
//        cardLabel.topAnchor.constraint(equalTo: forLabel.bottomAnchor,constant: 2).isActive=true
//        cardLabel.leftAnchor.constraint(equalTo: indigoView.leftAnchor,constant: 7).isActive=true
        
        indigoView.addSubview(seeLabel)
        seeLabel.bottomAnchor.constraint(equalTo: indigoView.bottomAnchor,constant: -10).isActive=true
        seeLabel.centerXAnchor.constraint(equalTo: indigoView.centerXAnchor,constant: -10).isActive=true
        
        indigoView.addSubview(playImage)
        playImage.bottomAnchor.constraint(equalTo: indigoView.bottomAnchor,constant: -7).isActive=true
        playImage.leftAnchor.constraint(equalTo: seeLabel.rightAnchor,constant: 1).isActive=true
        playImage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        playImage.widthAnchor.constraint(equalToConstant: 20).isActive=true
}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


