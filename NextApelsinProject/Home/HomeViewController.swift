//
//  HomeViewController.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 12/04/22.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, UISearchControllerDelegate {
    var scrollView: UIScrollView!
    
    var label: UILabel!
    
    var headerContainerView: UIView!
    
    var collectionView: UICollectionView?
    
    var collectionViewNext: UICollectionView?
    
    var collectionViewLast: UICollectionView?
    
    var apelsinImage: UIImageView = {
        let apelsinImage = UIImageView()
        apelsinImage.translatesAutoresizingMaskIntoConstraints=false
        apelsinImage.image = UIImage(named: "baby_image")
        apelsinImage.layer.masksToBounds = false
        apelsinImage.layer.cornerRadius = 20
        apelsinImage.clipsToBounds = true
        return apelsinImage
    }()
    
    
    var iconeImage: UIImageView = {
        let iconeImage = UIImageView()
        iconeImage.translatesAutoresizingMaskIntoConstraints=false
        iconeImage.image = UIImage(named: "icons_image")
        return iconeImage
    }()
    
    var calendarImage: UIImageView = {
        let calendarImage = UIImageView()
        calendarImage.translatesAutoresizingMaskIntoConstraints=false
        calendarImage.image = UIImage(named: "calendar_image")
        return calendarImage
    }()
    
    var bagImage: UIImageView = {
        let bagImage = UIImageView()
        bagImage.translatesAutoresizingMaskIntoConstraints=false
        bagImage.image = UIImage(named: "bag_image")
        return bagImage
    }()
    
    var totalLabel: UILabel = {
        let totalLabel = UILabel()
        totalLabel.translatesAutoresizingMaskIntoConstraints=false
        totalLabel.font = UIFont.systemFont(ofSize: 16)
        totalLabel.textColor = .white
        totalLabel.text = "Total Balance"
        return totalLabel
    }()
    
    
    var arrowimage: UIImageView = {
        let arrowImage = UIImageView()
        arrowImage.translatesAutoresizingMaskIntoConstraints=false
        arrowImage.image = UIImage(named: "arrow_image")
        return arrowImage
    }()
    
    var downImage: UIImageView = {
        let downImage = UIImageView()
        downImage.translatesAutoresizingMaskIntoConstraints=false
        downImage.image = UIImage(named: "arrow_down_image")
        return downImage
    }()
    
    var uzsLabel: UILabel = {
        let uzsLabel = UILabel()
        uzsLabel.translatesAutoresizingMaskIntoConstraints=false
        uzsLabel.font = UIFont.systemFont(ofSize: 25)
        uzsLabel.textColor = .white
        uzsLabel.text = "1 000 000 UZS"
        return uzsLabel
    }()
    
    
    lazy var indicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .medium)
        view.color = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var eyeBtn: UIButton = {
        let eyeBtn = UIButton()
        eyeBtn.translatesAutoresizingMaskIntoConstraints=false
        eyeBtn.setImage(UIImage(named: "eye_image"), for: .normal)
        eyeBtn.addTarget(self, action: #selector(eyeBtnTapped), for: .touchUpInside)
        return eyeBtn
    }()
    
    var restartBtn: UIButton = {
        let restartBtn = UIButton()
        restartBtn.translatesAutoresizingMaskIntoConstraints=false
        restartBtn.setImage(UIImage(named: "restart_image"), for: .normal)
        return restartBtn
    }()
    
    var homeView: UIView = {
        let homeView = UIView()
        homeView.heightAnchor.constraint(equalToConstant: 1000).isActive=true
        return homeView
    }()
    
    var wightView: UIView = {
        let wightView = UIView()
        wightView.translatesAutoresizingMaskIntoConstraints=false
        wightView.backgroundColor = .white
        return wightView
    }()
    
    var cardBtn: UIButton = {
        let cardBtn = UIButton()
        cardBtn.translatesAutoresizingMaskIntoConstraints=false
        cardBtn.layer.borderWidth = 1
        cardBtn.layer.borderColor = UIColor.systemGray.withAlphaComponent(0.2).cgColor
        cardBtn.layer.cornerRadius = 30
        cardBtn.backgroundColor = .white
        return cardBtn
    }()
    
    var favoritLabel: UILabel = {
        let favoritLabel = UILabel()
        favoritLabel.translatesAutoresizingMaskIntoConstraints=false
        favoritLabel.font = UIFont.systemFont(ofSize: 20)
        favoritLabel.textColor = .black
        favoritLabel.text = "Add a favorite card"
        return favoritLabel
    }()
    
    var addImage: UIImageView = {
        let addImage = UIImageView()
        addImage.translatesAutoresizingMaskIntoConstraints=false
        addImage.image = UIImage(named: "add_image")
        return addImage
    }()
    
    var mobileView: UIView = {
        let mobileView = UIView()
        mobileView.translatesAutoresizingMaskIntoConstraints=false
        mobileView.backgroundColor = .white
        mobileView.layer.cornerRadius = 30
        return mobileView
    }()
    
    var paymentLabel: UILabel = {
        let paymentLabel = UILabel()
        paymentLabel.translatesAutoresizingMaskIntoConstraints=false
        paymentLabel.font = UIFont.systemFont(ofSize: 15)
        paymentLabel.textColor = .systemGray
        paymentLabel.text = "Mobile Payment"
        return paymentLabel
    }()
    
    var phoneLabel: UILabel = {
        let phoneLabel = UILabel()
        phoneLabel.translatesAutoresizingMaskIntoConstraints=false
        phoneLabel.font = UIFont.systemFont(ofSize: 18)
        phoneLabel.textColor = .black
        phoneLabel.text = "+998"
        return phoneLabel
    }()
    
    var numberFiled: UITextField = {
        let numberFiled = UITextField()
        numberFiled.translatesAutoresizingMaskIntoConstraints=false
        numberFiled.placeholder = "Phone number"
        numberFiled.font = UIFont.systemFont(ofSize: 20)
        numberFiled.textColor = .black
        return numberFiled
    }()
    
    var userImage: UIImageView = {
        let userImage = UIImageView()
        userImage.translatesAutoresizingMaskIntoConstraints=false
        userImage.image = UIImage(named: "user_image")
        return userImage
    }()
    
    var greenView: UIView = {
        let greenView = UIView()
        greenView.translatesAutoresizingMaskIntoConstraints=false
        greenView.backgroundColor = .systemGreen
        greenView.layer.cornerRadius = 30
        return greenView
    }()
    //    var greenViewTopConstraints:NSLayoutConstraint?
    
    var fifeLabel: UILabel = {
        let fifeLabel = UILabel()
        fifeLabel.translatesAutoresizingMaskIntoConstraints=false
        fifeLabel.font = UIFont.systemFont(ofSize: 20)
        fifeLabel.textColor = .white
        fifeLabel.text = "5"
        return fifeLabel
    }()
    
    var orangeImage: UIImageView = {
        let orangeImage = UIImageView()
        orangeImage.translatesAutoresizingMaskIntoConstraints=false
        orangeImage.image = UIImage(named: "orange_image")
        return orangeImage
    }()
    
    var serviceLabel: UILabel = {
        let serviceLabel = UILabel()
        serviceLabel.translatesAutoresizingMaskIntoConstraints=false
        serviceLabel.font = UIFont.systemFont(ofSize: 16)
        serviceLabel.textColor = .systemGray
        serviceLabel.text = "Services"
        return serviceLabel
    }()
    
    var editLabel: UILabel = {
        let editLabel = UILabel()
        editLabel.translatesAutoresizingMaskIntoConstraints=false
        editLabel.font = UIFont.systemFont(ofSize: 16)
        editLabel.textColor = UIColor.systemGray
        editLabel.text = "Edit"
        return editLabel
    }()
    
    
    var customView: UIView = {
        let customView = UIView()
        customView.translatesAutoresizingMaskIntoConstraints=false
        customView.backgroundColor = .black
        return customView
    }()
    
    var savelabel: UILabel = {
        let saveLabel = UILabel()
        saveLabel.translatesAutoresizingMaskIntoConstraints=false
        saveLabel.font = UIFont.systemFont(ofSize: 16)
        saveLabel.textColor = .systemGray
        saveLabel.text = "Saved Payments"
        return saveLabel
    }()
    
    var allLabel: UILabel = {
        let allLabel = UILabel()
        allLabel.translatesAutoresizingMaskIntoConstraints=false
        allLabel.font = UIFont.systemFont(ofSize: 16)
        allLabel.textColor = .systemGray
        allLabel.text = "All"
        return allLabel
    }()
    
    var paymentView: UIView = {
        let paymentView = UIView()
        paymentView.translatesAutoresizingMaskIntoConstraints=false
        paymentView.backgroundColor = .white
        paymentView.layer.cornerRadius = 30
        return paymentView
    }()
    
    var createLabel: UILabel = {
        let createLabel = UILabel()
        createLabel.translatesAutoresizingMaskIntoConstraints=false
        createLabel.font = UIFont.systemFont(ofSize: 12)
        createLabel.textColor = .black
        createLabel.text = "create a favorite"
        return createLabel
    }()
    
    var appleBtn: UIButton = {
        let appleBtn = UIButton()
        appleBtn.translatesAutoresizingMaskIntoConstraints=false
        appleBtn.layer.borderColor = UIColor.systemGray6.withAlphaComponent(02).cgColor
        appleBtn.layer.borderWidth = 1
        appleBtn.layer.cornerRadius = 30
        return appleBtn
    }()
    
    var favoriteImage: UIImageView = {
        let favoriteImage = UIImageView()
        favoriteImage.translatesAutoresizingMaskIntoConstraints=false
        favoriteImage.image = UIImage(named: "add_image-1")
        return favoriteImage
    }()
    
    var offerLabel: UILabel = {
        let offerLabel = UILabel()
        offerLabel.translatesAutoresizingMaskIntoConstraints=false
        offerLabel.font = UIFont.systemFont(ofSize: 16)
        offerLabel.textColor = .systemGray
        offerLabel.text = "Offers and lifehacks"
        return offerLabel
    }()
    
    var arowImage: UIImageView = {
        let arowImage = UIImageView()
        arowImage.translatesAutoresizingMaskIntoConstraints=false
        arowImage.image = UIImage(named: "arow_image")
        return arowImage
    }()
    
    var nextView: UIView = {
        let nextView = UIView()
        nextView.translatesAutoresizingMaskIntoConstraints=false
        nextView.backgroundColor = .yellow
        return nextView
    }()
    
    var localLabel: UILabel = {
        let localLabel = UILabel()
        localLabel.translatesAutoresizingMaskIntoConstraints=false
        localLabel.font = UIFont.systemFont(ofSize: 16)
        localLabel.textColor = UIColor.systemGray
        localLabel.text = "Local payments"
        return localLabel
    }()
    
    var alertLabel: UILabel = {
        let alertLabel = UILabel()
        alertLabel.translatesAutoresizingMaskIntoConstraints=false
        alertLabel.font = UIFont.systemFont(ofSize: 16)
        alertLabel.textColor = .systemGray
        alertLabel.text = "All"
        return alertLabel
    }()
    
    var bestView: UIView = {
        let bestView = UIView()
        bestView.translatesAutoresizingMaskIntoConstraints=false
        bestView.backgroundColor = .yellow
        return bestView
    }()
    
    var widgetLabel: UILabel = {
        let widgetLabel = UILabel()
        widgetLabel.translatesAutoresizingMaskIntoConstraints=false
        widgetLabel.font = UIFont.systemFont(ofSize: 16)
        widgetLabel.textColor = .orange
        widgetLabel.text = "Widget settings"
        return widgetLabel
    }()
    
    var settingImage: UIImageView = {
        let settingImage = UIImageView()
        settingImage.translatesAutoresizingMaskIntoConstraints=false
        settingImage.image = UIImage(named: "setting_image")
        return settingImage
    }()
    
    var searchController: UISearchBar = {
        let searchController = UISearchBar(frame: CGRect(x: 14, y: 0, width: 50, height: 30))
        searchController.translatesAutoresizingMaskIntoConstraints=false
        searchController.searchTextField.attributedPlaceholder = NSAttributedString(string: "Search", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let cancelButtonAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UIBarButtonItem.appearance().setTitleTextAttributes(cancelButtonAttributes , for: .normal)
        searchController.isTranslucent=true
        searchController.searchTextField.leftView?.tintColor = .white
        searchController.searchTextField.rightView?.tintColor = .white
        return searchController
    }()
    
    var monyView: UIView = {
        let monyView = UIView()
        monyView.translatesAutoresizingMaskIntoConstraints=false
        monyView.backgroundColor = .red
        return monyView
    }()
    
    
    
    var list:[Contactmodel]=[]
    var serviceList:[Localmodel]=[]
    var bankServiceList:[BankServiceModel]=[]
    let notificationBtn = UIButton()
    let whiteBtn = UIButton()
    var tapped=true
    
    var orangeWidth : NSLayoutConstraint?
    var orangeTopAnchor : NSLayoutConstraint?
    var balanceTopAnchor : NSLayoutConstraint?
    var balanceLeftAnchor : NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createViews()
        setViewConstraints()
        
        
        setVisaModel()
        setAkfaaModel()
        setBankModelList()
        configureNavBar()
        
        
        navigationItem.titleView = searchController
        
    }
    
    @objc func eyeBtnTapped(_ sender:UIButton){
        
        if(tapped){
            uzsLabel.text="• • • • • •"
            fifeLabel.text = "• • • • •"
            
            eyeBtn.setImage(UIImage(named: "eye_image_off"), for: .normal)
            orangeWidth?.constant=130.0
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
                self.view.layoutIfNeeded()
                self.orangeImage.transform = CGAffineTransform(rotationAngle: CGFloat(360))
            }, completion: nil)
            
            tapped=false
        }else{
            eyeBtn.setImage(UIImage(named: "eye_image"), for: .normal)
            tapped=true
            uzsLabel.text="1 000 000 UZS"
            fifeLabel.text="5"
            
            self.orangeWidth?.constant=85
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
                self.view.layoutIfNeeded()
                self.orangeImage.transform = CGAffineTransform(rotationAngle: CGFloat(-360))
            }, completion: nil)
            
        }
        
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.title = ""
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView==self.collectionView){
            return list.count
        }else if (collectionView==self.collectionViewNext){
            return bankServiceList.count
        }else if (collectionView==self.collectionViewLast){
            return serviceList.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView==self.collectionView){
            
            self.collectionView?.register(MyCollectionViewCell15.self,
                                          forCellWithReuseIdentifier: MyCollectionViewCell15.indetifier)
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell15.indetifier,for: indexPath) as! MyCollectionViewCell15
            
            let contactmodel = list[indexPath.row]
            
            cell.visaImage.image=contactmodel.image
            cell.alertLabel.text=contactmodel.name
            if(contactmodel.name=="Visa Direct"){
                cell.directLabel.text="Direct"
            }else{
                cell.directLabel.text=""
            }
            
            
            
            
            
            return cell
            
        }else if collectionView==collectionViewNext{
            
            let item = bankServiceList[indexPath.row]
            if(!item.image.isEmpty){
                self.collectionViewNext?.register(CollectionviewNext.self,
                                                  forCellWithReuseIdentifier: CollectionviewNext.indetifier)
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionviewNext.indetifier, for: indexPath) as! CollectionviewNext
                
                cell.indigoView.backgroundColor = .random()
                cell.whiteImage.image = UIImage(named: item.image)?.withTintColor(.white)
                cell.myhouseLabel.text=item.title
                return cell
                
            }else{
                
                self.collectionViewNext?.register(CollectionViewCellWithTitle.self,
                                                  forCellWithReuseIdentifier: CollectionViewCellWithTitle.indetifier)
                
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellWithTitle.indetifier, for: indexPath) as! CollectionViewCellWithTitle
                
                if(item.title=="👽!"){
                    cell.indigoView.backgroundColor = .systemGreen
                }else{
                    cell.indigoView.backgroundColor = .orange
                }
                cell.numberLabel.text=item.title
                cell.forLabel.text=item.subtitle
                
                
                
                return cell
            }
            
            
            
        }else if collectionView==collectionViewLast{
            
            self.collectionViewLast?.register(CollectionViewLast.self,
                                              forCellWithReuseIdentifier: CollectionViewLast.indetifier)
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewLast.indetifier, for: indexPath) as! CollectionViewLast
            
            let localmodel = serviceList[indexPath.row]
            
            cell.akfaImage.image=localmodel.image
            cell.medlineLabel.text=localmodel.name
            cell.kmLabel.text=localmodel.km
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    //
    func setVisaModel(){
        list.append(Contactmodel(image:UIImage(named: "visa_image")!, name: "Visa Direct"))
        list.append(Contactmodel(image:UIImage(named: "card_image")!, name: "My cards"))
        list.append(Contactmodel(image:UIImage(named: "arrow_image-1")!, name: "Currency exchange"))
        list.append(Contactmodel(image:UIImage(named: "wallet_image")!, name: "Wallets"))
        list.append(Contactmodel(image:UIImage(named: "credit_image")!, name: "My loans"))
        list.append(Contactmodel(image:UIImage(named: "deposit_image")!, name: "Deposit"))
        list.append(Contactmodel(image:UIImage(named: "account_image")!, name: "Account"))
        
        
        
    }
    
    func setAkfaaModel(){
        serviceList.append(Localmodel(image: UIImage(named: "akfaa_image")!, name: "Akfa Medline", km: "0.53km"))
        serviceList.append(Localmodel(image: UIImage(named: "safia_image")!, name: "Safia (НУКУС)", km: "1.55km"))
        serviceList.append(Localmodel(image: UIImage(named: "real_image")!, name: "Real City", km: "0.45km"))
        serviceList.append(Localmodel(image: UIImage(named: "savii_image")!, name: "SAVII ESKI SHAHAR", km: "1.22km"))
        serviceList.append(Localmodel(image: UIImage(named: "vicco_image")!, name: "VICCO Eski Shahar", km: "1.22km"))
        serviceList.append(Localmodel(image: UIImage(named: "akfaunversity_image")!, name: "Akfa University", km: "1.44km"))
        serviceList.append(Localmodel(image: UIImage(named: "crredit_image")!, name: "Credit Asia", km: "1.69km"))
        serviceList.append(Localmodel(image: UIImage(named: "newyork_image")!, name: "New York Burgers", km: "1.69km"))
        serviceList.append(Localmodel(image: UIImage(named: "baggi_image")!, name: "BAGGI MEN", km: "2.1km"))
        
        
        
        
        
        
        
    }
    
    func setBankModelList(){
        
        bankServiceList.append(BankServiceModel(title: "3,5%", subtitle: "for transfers between cards", description: "between Cards", image: ""))
        bankServiceList.append(BankServiceModel(title: "👽!", subtitle: "Beware scrammers", description: "between Cards", image: ""))
        
        
        bankServiceList.append(BankServiceModel(title: "My Home", subtitle: "For transfers ", description: "between Cards", image: "home_image-1"))
        bankServiceList.append(BankServiceModel(title: "Visa ", subtitle: "Direct shipping to 159 countries ", description: "scammers", image: ""))
        bankServiceList.append(BankServiceModel(title: "My Wallet", subtitle: "BeWare ", description: "scammers", image: "walet_image"))
        
    }
    
}



extension HomeViewController{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let actualPosition = scrollView.panGestureRecognizer.translation(in: scrollView.superview)
        
        if scrollView.isDragging  && actualPosition.y < 0{
            
            
            UIView.transition(with: self.uzsLabel, duration: 0.7,
                              options: .curveEaseOut,
                              animations: {
                self.setUpAnimation(scrollView)
//                self.uzsLabel.isHidden=true
                self.totalLabel.isHidden=true
                self.arrowimage.isHidden=true
                self.downImage.isHidden=true
                self.eyeBtn.isHidden=true
                self.restartBtn.isHidden=true
                self.searchController.isHidden=true
                
            })
            
        }else{
            self.setBelowAnimation(scrollView)
//            self.uzsLabel.isHidden = false
            self.totalLabel.isHidden=false
            self.arrowimage.isHidden=false
            self.downImage.isHidden=false
            self.eyeBtn.isHidden=false
            self.restartBtn.isHidden=false
            self.searchController.isHidden=false
            
        }
    }
    
    func setUpAnimation(_ scrollView: UIScrollView) {
        orangeTopAnchor?.constant=UIScreen.main.bounds.height*0.11
        self.balanceTopAnchor?.constant=10
        balanceLeftAnchor?.constant=60
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            self.view.layoutIfNeeded()
            self.navigationController?.navigationBar.layoutIfNeeded()
        }, completion: nil)
        
        
        
    }
    
    
    func setBelowAnimation(_ scrollView: UIScrollView) {
        orangeTopAnchor?.constant=UIScreen.main.bounds.height*0.22
        self.balanceTopAnchor?.constant=95
        balanceLeftAnchor?.constant=40
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            self.view.layoutIfNeeded()
            self.navigationController?.navigationBar.layoutIfNeeded()
        }, completion: nil)
        
    }
    
}
