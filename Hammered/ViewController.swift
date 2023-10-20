//
//  ViewController.swift
//  Hammered
//
//  Created by William Luck on 13/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mybutton1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "main"
        view.backgroundColor = .systemBackground

        mybutton1.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        
        configureItems()
        
    }
        private func configureItems() {
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
            target: self,
            action: nil)
     }
    
    @objc func didTapButton() {
        let vc = UIViewController()
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
       
    }

