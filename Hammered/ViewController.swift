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
        title = "Bar Items"
        view.backgroundColor = .systemBackground

        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemMint
        button.setTitle("Go to View 2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        
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

