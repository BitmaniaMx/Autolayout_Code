//
//  ViewController.swift
//  Autolayout_Code
//
//  Created by Rafael Gonzalez on 23/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
    }

    
    func setupUI() {
     
        //Add label to main view
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        
        //Additional contrait for label3
        let contraintLbl3 = NSLayoutConstraint(item: label3, attribute: .leading, relatedBy: .greaterThanOrEqual, toItem: label2, attribute: .trailing, multiplier: 1, constant: 1)
        
        contraintLbl3.isActive = true
        
        //Create label1's text and declare its constraints
        label1.text = "⌘ + ⌃ + Space"
        label1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                label1.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                ,label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: CGFloat(integerLiteral: 30))
            ]
        )
        
        //Create label2's text and declare its constraints
        label2.text = "😃"
        label2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                label2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30)
                , label2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
            ]
        )

        //Create label3's text and declare its constraints
        label3.text = "Welcome to autolayout"
        label3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                label3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
                , label3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
                , contraintLbl3
            ]
        )
        
        
        
    }
    
}

