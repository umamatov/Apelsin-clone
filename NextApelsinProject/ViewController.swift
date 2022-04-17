//
//  ViewController.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 12/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        didTapButton()
        
    }
    
    
    func didTapButton() {
        let tabBarVC = UITabBarController()
        tabBarVC.tabBar.tintColor = .orange
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: TransferViewController())
        let vc3 = UINavigationController(rootViewController: PaymentViewController())
        let vc4 = UINavigationController(rootViewController: ChatViewController())
        let vc5 = UINavigationController(rootViewController: MenuViewController())
        vc1.title = "Home"
        vc2.title = "Transfer"
        vc3.title = "Payment"
        vc4.title = "Chat"
        vc5.title = "Menu"
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5,], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["home_image", "rocket_image", "walet_image", "chat_image", "function_image"]
        
        for x in 0..<items.count {
            items[x] .image = UIImage(named: images[x])
        }
        
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
        
        
    }
    
    
}






