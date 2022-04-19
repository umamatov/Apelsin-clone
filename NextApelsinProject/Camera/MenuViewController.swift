//
//  MenuViewController.swift
//  NextApelsinProject
//
//  Created by Umidjon Mamatov on 12/04/22.
//
//
import UIKit
//import CreditCardScanner



class MenuViewController: UIViewController {

    var button:UIButton={
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.addTarget(self, action: #selector(buttonTaped(_:)), for: .touchUpInside)
        button.setTitle("Open card reader", for: .normal)
        return button
    }()

    
    var  resultLabel:UILabel={
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        label.text = ""
        label.textAlignment = .center 
        return label
        
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true

        view.addSubview(resultLabel)
        resultLabel.topAnchor.constraint(equalTo: button.bottomAnchor,constant: 10).isActive=true
        resultLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive=true
        resultLabel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive=true

    }
    
    
    @objc func buttonTaped(_ sender:UIButton){
        let vc = CreditCardScannerViewController(delegate: self)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }


}

extension MenuViewController: CreditCardScannerViewControllerDelegate {
    func creditCardScannerViewControllerDidCancel(_ viewController: CreditCardScannerViewController) {
        viewController.dismiss(animated: true, completion: nil)
        print("cancel")
    }

    func creditCardScannerViewController(_ viewController: CreditCardScannerViewController, didErrorWith error: CreditCardScannerError) {
        print(error.errorDescription ?? "")
        resultLabel.text = error.errorDescription
        viewController.dismiss(animated: true, completion: nil)
    }

    func creditCardScannerViewController(_ viewController: CreditCardScannerViewController, didFinishWith card: CreditCard) {
        viewController.dismiss(animated: true, completion: nil)

        var dateComponents = card.expireDate
        dateComponents?.calendar = Calendar.current
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .short
        let date = dateComponents?.date.flatMap(dateFormater.string)

        let text = [card.number, date, card.name]
            .compactMap { $0 }
            .joined(separator: "\n")
        resultLabel.text = text
        print("\(card)")
    }
}

