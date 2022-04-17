//
//  TransferViewController.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 12/04/22.


import UIKit

class TransferViewController: UIViewController {

    
    var numberFiled: UITextField = {
        let numberFiled = UITextField()
        numberFiled.translatesAutoresizingMaskIntoConstraints=false
        numberFiled.backgroundColor = UIColor.white
        numberFiled.textColor = .red
        numberFiled.borderStyle = UITextField.BorderStyle.roundedRect
        numberFiled.keyboardType = .emailAddress
        numberFiled.placeholder = "Email"
//        view.addSubview(userfield)
        return numberFiled
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white

        view.addSubview(numberFiled)
        numberFiled.topAnchor.constraint(equalTo: view.topAnchor,constant: 50).isActive=true
        numberFiled.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive=true
        numberFiled.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive=true

        
    }
    


}
