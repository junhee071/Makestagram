//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Jun Hee Han on 7/11/18.
//  Copyright © 2018 Jun Hee Han. All rights reserved.
//

import Foundation
import UIKit
class MainTabBarController: UITabBarController {
    let photoHelper = MGPhotoHelper()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoHelper.completionHandler = { image in
            print("handle image")
        }
        
        delegate = self
        tabBar.unselectedItemTintColor = .black
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            photoHelper.presentActionSheet(from: self)
            return false
        } else {
            return true
        }
    }
}
