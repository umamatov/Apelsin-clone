//
//  HomeViewAnchors.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 14/04/22.
//

import Foundation
import UIKit
extension HomeViewController{
    
    func configureNavBar()  {
        view.backgroundColor = .orange
        
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backgroundColor = .orange
        
        let barButtonItem = UIBarButtonItem(customView: notificationBtn)
        self.navigationItem.leftBarButtonItem = barButtonItem
        
        let rightBarButtonItem = UIBarButtonItem(customView: whiteBtn)
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
        
        notificationBtn.translatesAutoresizingMaskIntoConstraints=false
        notificationBtn.backgroundColor = UIColor.clear
        notificationBtn.widthAnchor.constraint(equalToConstant: 40).isActive=true
        notificationBtn.heightAnchor.constraint(equalToConstant: 40).isActive=true
        notificationBtn.layer.cornerRadius = 20
        
        notificationBtn.addSubview(apelsinImage)
        apelsinImage.leftAnchor.constraint(equalTo: notificationBtn.leftAnchor,constant: -5).isActive=true
        apelsinImage.heightAnchor.constraint(equalToConstant: 40).isActive=true
        apelsinImage.widthAnchor.constraint(equalToConstant: 40).isActive=true
        apelsinImage.layer.cornerRadius = 20
        
        whiteBtn.translatesAutoresizingMaskIntoConstraints=false
        whiteBtn.backgroundColor = UIColor.clear
        whiteBtn.widthAnchor.constraint(equalToConstant: 90).isActive=true
        whiteBtn.heightAnchor.constraint(equalToConstant: 40).isActive=true
        whiteBtn.layer.cornerRadius = 10
        
        whiteBtn.addSubview(iconeImage)
        iconeImage.topAnchor.constraint(equalTo: whiteBtn.topAnchor,constant: 3).isActive=true
        iconeImage.rightAnchor.constraint(equalTo: whiteBtn.rightAnchor,constant: 5).isActive=true
        iconeImage.heightAnchor.constraint(equalToConstant: 27).isActive=true
        iconeImage.widthAnchor.constraint(equalToConstant: 27).isActive=true
        
        whiteBtn.addSubview(calendarImage)
        calendarImage.topAnchor.constraint(equalTo: whiteBtn.topAnchor,constant: 3).isActive=true
        calendarImage.rightAnchor.constraint(equalTo: iconeImage.leftAnchor,constant: -5).isActive=true
        calendarImage.heightAnchor.constraint(equalToConstant: 27).isActive=true
        calendarImage.widthAnchor.constraint(equalToConstant: 27).isActive=true
        
        whiteBtn.addSubview(bagImage)
        bagImage.topAnchor.constraint(equalTo: whiteBtn.topAnchor,constant: 3).isActive=true
        bagImage.rightAnchor.constraint(equalTo: calendarImage.leftAnchor,constant: -5).isActive=true
        bagImage.heightAnchor.constraint(equalToConstant: 27).isActive=true
        bagImage.widthAnchor.constraint(equalToConstant: 27).isActive=true
        
        
        
        
    }
    
    func createViews() {
        // ScrollView
        scrollView = UIScrollView()
        scrollView.delegate = self
        self.view.addSubview(scrollView)
        
        scrollView.backgroundColor = UIColor.systemGray6
        // Label
        homeView.backgroundColor = .systemGray6
        self.scrollView.addSubview(homeView)
        
        
        // Header Container
        headerContainerView = UIView()
        headerContainerView.backgroundColor = .orange
        self.scrollView.addSubview(headerContainerView)
        self.headerContainerView.addSubview(totalLabel)
       
    }
    
    
    func setViewConstraints() {
        // ScrollView Constraints
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor,constant: topbarHeight),
            self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
        
        // Label Constraints
        self.homeView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.homeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            self.homeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -0),
            self.homeView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: -0),
            self.homeView.topAnchor.constraint(equalTo: self.scrollView.topAnchor, constant: 100)
        ])
        
        // Header Container Constraints
        let headerContainerViewBottom : NSLayoutConstraint!
        
        self.headerContainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.headerContainerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: topbarHeight),
            self.headerContainerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerContainerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        headerContainerViewBottom = self.headerContainerView.bottomAnchor.constraint(equalTo: self.homeView.topAnchor, constant: -10)
        headerContainerViewBottom.priority = UILayoutPriority(rawValue: 900)
        headerContainerViewBottom.isActive = true
        
        totalLabel.topAnchor.constraint(equalTo: headerContainerView.topAnchor,constant: 40).isActive=true
        totalLabel.leftAnchor.constraint(equalTo: headerContainerView.leftAnchor,constant: 10).isActive=true
        
        
        headerContainerView.addSubview(arrowimage)
        arrowimage.topAnchor.constraint(equalTo: totalLabel.bottomAnchor,constant: 10).isActive=true
        arrowimage.leftAnchor.constraint(equalTo: headerContainerView.leftAnchor,constant: 10).isActive=true
        
        headerContainerView.addSubview(downImage)
        downImage.topAnchor.constraint(equalTo: arrowimage.bottomAnchor,constant: -8).isActive=true
        downImage.leftAnchor.constraint(equalTo: headerContainerView.leftAnchor,constant: 10).isActive=true
        
        headerContainerView.addSubview(eyeBtn)
        eyeBtn.topAnchor.constraint(equalTo: totalLabel.bottomAnchor,constant: 10).isActive=true
        eyeBtn.rightAnchor.constraint(equalTo: headerContainerView.rightAnchor,constant: -20).isActive=true
        eyeBtn.heightAnchor.constraint(equalToConstant: 25).isActive=true
        eyeBtn.widthAnchor.constraint(equalToConstant: 25).isActive=true
        
        headerContainerView.addSubview(restartBtn)
        restartBtn.topAnchor.constraint(equalTo: totalLabel.bottomAnchor,constant: 11).isActive=true
        restartBtn.rightAnchor.constraint(equalTo: eyeBtn.leftAnchor,constant: -15).isActive=true
        restartBtn.heightAnchor.constraint(equalToConstant: 25).isActive=true
        restartBtn.widthAnchor.constraint(equalToConstant: 25).isActive=true
        
        homeView.addSubview(wightView)
        wightView.topAnchor.constraint(equalTo: homeView.topAnchor,constant: -10).isActive=true
        wightView.leftAnchor.constraint(equalTo: homeView.leftAnchor).isActive=true
        wightView.rightAnchor.constraint(equalTo: homeView.rightAnchor).isActive=true
        wightView.heightAnchor.constraint(equalToConstant: 100).isActive=true
        
        homeView.addSubview(cardBtn)
        cardBtn.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 10).isActive=true
        cardBtn.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        cardBtn.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        cardBtn.heightAnchor.constraint(equalToConstant: 55).isActive=true
        cardBtn.layer.cornerRadius = 10
        
        cardBtn.addSubview(favoritLabel)
        favoritLabel.topAnchor.constraint(equalTo: cardBtn.topAnchor,constant: 15).isActive=true
        favoritLabel.leftAnchor.constraint(equalTo: cardBtn.leftAnchor,constant: 15).isActive=true
        
        cardBtn.addSubview(addImage)
        addImage.topAnchor.constraint(equalTo: cardBtn.topAnchor,constant: 15).isActive=true
        addImage.rightAnchor.constraint(equalTo: cardBtn.rightAnchor,constant: -15).isActive=true
        
        homeView.addSubview(mobileView)
        mobileView.topAnchor.constraint(equalTo: wightView.bottomAnchor,constant: 10).isActive=true
        mobileView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        mobileView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        mobileView.heightAnchor.constraint(equalToConstant: 110).isActive=true
        mobileView.layer.cornerRadius = 13
        
        mobileView.addSubview(paymentLabel)
        paymentLabel.topAnchor.constraint(equalTo: mobileView.topAnchor,constant: 15).isActive=true
        paymentLabel.leftAnchor.constraint(equalTo: mobileView.leftAnchor,constant: 15).isActive=true
        
        mobileView.addSubview(phoneLabel)
        phoneLabel.bottomAnchor.constraint(equalTo: mobileView.bottomAnchor,constant: -30).isActive=true
        phoneLabel.leftAnchor.constraint(equalTo: mobileView.leftAnchor,constant: 15).isActive=true
        
        mobileView.addSubview(numberFiled)
        numberFiled.bottomAnchor.constraint(equalTo: mobileView.bottomAnchor,constant: -28).isActive=true
        numberFiled.leftAnchor.constraint(equalTo: phoneLabel.rightAnchor,constant: 10).isActive=true
        numberFiled.heightAnchor.constraint(equalToConstant: 30).isActive=true
        numberFiled.widthAnchor.constraint(equalToConstant: 150).isActive=true
        
        mobileView.addSubview(userImage)
        userImage.bottomAnchor.constraint(equalTo: mobileView.bottomAnchor,constant: -30).isActive=true
        userImage.rightAnchor.constraint(equalTo: mobileView.rightAnchor,constant: -15).isActive=true
        
        homeView.addSubview(indicatorView)
        indicatorView.topAnchor.constraint(equalTo: mobileView.bottomAnchor,constant: 10).isActive=true
        indicatorView.centerXAnchor.constraint(equalTo: homeView.centerXAnchor).isActive=true
        indicatorView.heightAnchor.constraint(equalToConstant: 100).isActive=true
        indicatorView.widthAnchor.constraint(equalToConstant: 100).isActive=true
        
        
        view.addSubview(greenView)
        orangeTopAnchor=greenView.topAnchor.constraint(equalTo: view.topAnchor,constant: UIScreen.main.bounds.height*0.20)
        orangeTopAnchor?.isActive=true
        greenView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: 15).isActive=true
        greenView.heightAnchor.constraint(equalToConstant: 33).isActive=true
        orangeWidth=greenView.widthAnchor.constraint(equalToConstant: 85)
        orangeWidth?.isActive=true
        greenView.layer.cornerRadius = 15
        
        greenView.addSubview(fifeLabel)
        fifeLabel.topAnchor.constraint(equalTo: greenView.topAnchor,constant: 5).isActive=true
        fifeLabel.rightAnchor.constraint(equalTo: greenView.rightAnchor,constant: -30).isActive=true
        
        greenView.addSubview(orangeImage)
        orangeImage.topAnchor.constraint(equalTo: greenView.topAnchor,constant: 5).isActive=true
        orangeImage.leftAnchor.constraint(equalTo: greenView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(serviceLabel)
        serviceLabel.topAnchor.constraint(equalTo: mobileView.bottomAnchor,constant: 20).isActive=true
        serviceLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        
        homeView.addSubview(editLabel)
        editLabel.topAnchor.constraint(equalTo: mobileView.bottomAnchor,constant: 20).isActive=true
        editLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -20).isActive=true
        
        homeView.addSubview(customView)
        customView.topAnchor.constraint(equalTo: serviceLabel.bottomAnchor,constant: 10).isActive=true
        customView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 0).isActive=true
        customView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -0).isActive=true
        customView.heightAnchor.constraint(equalToConstant: 110).isActive=true
        
        homeView.addSubview(savelabel)
        savelabel.topAnchor.constraint(equalTo: customView.bottomAnchor,constant: 15).isActive=true
        savelabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        
        homeView.addSubview(allLabel)
        allLabel.topAnchor.constraint(equalTo: customView.bottomAnchor,constant: 15).isActive=true
        allLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -20).isActive=true
        
        homeView.addSubview(paymentView)
        paymentView.topAnchor.constraint(equalTo: savelabel.bottomAnchor,constant: 15).isActive=true
        paymentView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        paymentView.heightAnchor.constraint(equalToConstant: 130).isActive=true
        paymentView.widthAnchor.constraint(equalToConstant: 115).isActive=true
        paymentView.layer.cornerRadius = 15
        
        paymentView.addSubview(createLabel)
        createLabel.topAnchor.constraint(equalTo: paymentView.topAnchor,constant: 20).isActive=true
        createLabel.leftAnchor.constraint(equalTo: paymentView.leftAnchor,constant: 10).isActive=true
        
        paymentView.addSubview(appleBtn)
        appleBtn.bottomAnchor.constraint(equalTo: paymentView.bottomAnchor,constant: -7).isActive=true
        appleBtn.leftAnchor.constraint(equalTo: paymentView.leftAnchor,constant: 7).isActive=true
        appleBtn.rightAnchor.constraint(equalTo: paymentView.rightAnchor,constant: -7).isActive=true
        appleBtn.heightAnchor.constraint(equalToConstant: 60).isActive=true
        appleBtn.layer.cornerRadius = 10
        
        appleBtn.addSubview(favoriteImage)
        favoriteImage.topAnchor.constraint(equalTo: appleBtn.topAnchor,constant: 5).isActive=true
        favoriteImage.centerXAnchor.constraint(equalTo: appleBtn.centerXAnchor).isActive=true
        
        homeView.addSubview(offerLabel)
        offerLabel.topAnchor.constraint(equalTo: paymentView.bottomAnchor,constant: 20).isActive=true
        offerLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        
        homeView.addSubview(arowImage)
        arowImage.topAnchor.constraint(equalTo: paymentView.bottomAnchor,constant: 20).isActive=true
        arowImage.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        arowImage.heightAnchor.constraint(equalToConstant: 25).isActive=true
        arowImage.widthAnchor.constraint(equalToConstant: 25).isActive=true
        
        homeView.addSubview(nextView)
        nextView.topAnchor.constraint(equalTo: offerLabel.bottomAnchor,constant: 5).isActive=true
        nextView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 0).isActive=true
        nextView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -0).isActive=true
        nextView.heightAnchor.constraint(equalToConstant: 160).isActive=true
        
        homeView.addSubview(localLabel)
        localLabel.topAnchor.constraint(equalTo: nextView.bottomAnchor,constant: 10).isActive=true
        localLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        
        homeView.addSubview(alertLabel)
        alertLabel.topAnchor.constraint(equalTo: nextView.bottomAnchor,constant: 10).isActive=true
        alertLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -20).isActive=true
        
        homeView.addSubview(bestView)
        bestView.topAnchor.constraint(equalTo: localLabel.bottomAnchor,constant: 10).isActive=true
        bestView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 0).isActive=true
        bestView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -0).isActive=true
        bestView.heightAnchor.constraint(equalToConstant: 120).isActive=true
        
        homeView.addSubview(widgetLabel)
        widgetLabel.topAnchor.constraint(equalTo: bestView.bottomAnchor,constant: 5).isActive=true
        widgetLabel.centerXAnchor.constraint(equalTo: homeView.centerXAnchor).isActive=true
       
        homeView.addSubview(settingImage)
        settingImage.topAnchor.constraint(equalTo: bestView.bottomAnchor,constant: 2).isActive=true
        settingImage.rightAnchor.constraint(equalTo: widgetLabel.leftAnchor,constant: -3).isActive=true
        
        guard let navbar = navigationController?.navigationBar else {
            return
        }
        navbar.addSubview(uzsLabel)
        balanceTopAnchor=uzsLabel.topAnchor.constraint(equalTo: navbar.topAnchor,constant: 80)
        balanceTopAnchor?.isActive=true
        balanceLeftAnchor=uzsLabel.leftAnchor.constraint(equalTo: navbar.leftAnchor,constant: 45)
        balanceLeftAnchor?.isActive=true
        
//        view.addSubview(monyView)
//        balanceTopAnchor=monyView.topAnchor.constraint(equalTo: view.topAnchor,constant: 90)
//        balanceTopAnchor?.isActive=true
//        monyView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 20).isActive=true
//
        

        
        setCardCollectionViewAnchors()
        setNextCollectionViewAnchors()
        setLastCollectionViewAnchors()
    }
    
    @objc func confirmTap(){
        indicatorView.startAnimating()
    }
    
    func setCardCollectionViewAnchors() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 90, left: 5, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: view.frame.size.width/4.3 ,
                                 height:100)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = .systemGray6
        collectionView?.alwaysBounceHorizontal = false
        collectionView?.translatesAutoresizingMaskIntoConstraints=false
        collectionView?.showsHorizontalScrollIndicator=false
        customView.addSubview(collectionView!)
        collectionView?.topAnchor.constraint(equalTo: customView.topAnchor).isActive=true
        collectionView?.bottomAnchor.constraint(equalTo: customView.bottomAnchor).isActive=true
        collectionView?.leftAnchor.constraint(equalTo: customView.leftAnchor).isActive=true
        collectionView?.rightAnchor.constraint(equalTo: customView.rightAnchor).isActive=true
        
        
    }
    
    func setNextCollectionViewAnchors(){
        
        let nextLayout = UICollectionViewFlowLayout()
        nextLayout.scrollDirection = .horizontal
        nextLayout.sectionInset = UIEdgeInsets(top: 90, left: 5, bottom: 70, right: 5)
        nextLayout.itemSize = CGSize(width: view.frame.size.width/3 ,
                                     height: 150.0)
        
        
        collectionViewNext = UICollectionView(frame: .zero, collectionViewLayout: nextLayout)
        
        collectionViewNext?.delegate = self
        collectionViewNext?.dataSource = self
        collectionViewNext?.backgroundColor = .systemGray6
        collectionViewNext?.alwaysBounceHorizontal = false
        collectionViewNext?.translatesAutoresizingMaskIntoConstraints=false
        collectionViewNext?.showsHorizontalScrollIndicator=false
        nextView.addSubview(collectionViewNext!)
        collectionViewNext?.topAnchor.constraint(equalTo: nextView.topAnchor).isActive=true
        collectionViewNext?.bottomAnchor.constraint(equalTo: nextView.bottomAnchor).isActive=true
        collectionViewNext?.leftAnchor.constraint(equalTo: nextView.leftAnchor).isActive=true
        collectionViewNext?.rightAnchor.constraint(equalTo: nextView.rightAnchor).isActive=true
        
    }
    
    func setLastCollectionViewAnchors() {
        
        let lastLayout = UICollectionViewFlowLayout()
        lastLayout.scrollDirection = .horizontal
        lastLayout.sectionInset = UIEdgeInsets(top: 50, left: 3, bottom: 70, right: 5)
        lastLayout.itemSize = CGSize(width: view.frame.size.width/1.4 ,
                                     height: 110.0)
        
        
        collectionViewLast = UICollectionView(frame: .zero, collectionViewLayout: lastLayout)
        
        collectionViewLast?.delegate = self
        collectionViewLast?.dataSource = self
        collectionViewLast?.backgroundColor = .systemGray6
        collectionViewLast?.alwaysBounceHorizontal = false
        collectionViewLast?.translatesAutoresizingMaskIntoConstraints=false
        collectionViewLast?.showsHorizontalScrollIndicator=false
        bestView.addSubview(collectionViewLast!)
        collectionViewLast?.topAnchor.constraint(equalTo: bestView.topAnchor).isActive=true
        collectionViewLast?.bottomAnchor.constraint(equalTo: bestView.bottomAnchor).isActive=true
        collectionViewLast?.leftAnchor.constraint(equalTo: bestView.leftAnchor).isActive=true
        collectionViewLast?.rightAnchor.constraint(equalTo: bestView.rightAnchor).isActive=true
        
        
    }
    
    
}
