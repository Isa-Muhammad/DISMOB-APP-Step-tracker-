//
//  FirebaseDatabase.swift
//  DISMOB APP
//
//  Created by Isa Muhammad on 29/04/2019.
//  Copyright © 2019 Isa Muhammad. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

enum Node: String {
    case users
    
    static func get(_ node: Node) -> DatabaseReference {
        return Database.database().reference().child(node.rawValue)
    }
}


// you dont have to import fb db everywhere
// you want to change th root node -> change once
// never mistake with typo in root node key


