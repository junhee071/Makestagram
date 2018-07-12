//
//  StorageReference+Post.swift
//  Makestagram
//
//  Created by Jun Hee Han on 7/12/18.
//  Copyright © 2018 Jun Hee Han. All rights reserved.
//

import Foundation
import FirebaseStorage

extension StorageReference {
    static let dateFormatter = ISO8601DateFormatter()
    
    static func newPostImageReferece() -> StorageReference {
        let uid = User.current.uid
        let timestamp = dateFormatter.string(from: Date())
        
        return Storage.storage().reference().child("image/posts/\(uid)/\(timestamp).jpg")
    }
}
