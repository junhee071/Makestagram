//
//  UIImage+Size.swift
//  Makestagram
//
//  Created by Jun Hee Han on 7/12/18.
//  Copyright © 2018 Jun Hee Han. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    var aspectHeight: CGFloat {
        let heightRatio = size.height / 736
        let widthRatio = size.width / 414
        let aspectRatio = fmax(heightRatio, widthRatio)
        
        return size.height / aspectRatio
    }
}
