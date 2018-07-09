//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Jun Hee Han on 7/9/18.
//  Copyright © 2018 Jun Hee Han. All rights reserved.
//

import Foundation
import UIKit
class LoginViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func logInButtonTapped(_ sender: UIButton) {
        print("login button tapped")
    }
    
}
