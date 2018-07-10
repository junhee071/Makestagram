//
//  CreateUserNameViewController.swift
//  Makestagram
//
//  Created by Jun Hee Han on 7/10/18.
//  Copyright © 2018 Jun Hee Han. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseDatabase

class CreateUserNameViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        guard let firUser = Auth.auth().currentUser, let username = usernameTextField.text,
            !username.isEmpty else { return }
        let userAttrs = ["username": username]
        
        let ref = Database.database().reference().child("users").child(firUser.uid)
        
        ref.setValue(userAttrs) { (error, ref) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return
            }
            
            ref.observeSingleEvent(of: .value, with: { (snapshot) in
                let user = User(snapshot: snapshot)
            })
        }
    }
}
