//
//  UserService.swift
//  DISMOB APP
//
//  Created by Isa Muhammad on 01/05/2019.
//  Copyright © 2019 Isa Muhammad. All rights reserved.
//

import Foundation


class UserService {
    static let shared = UserService()
    
    func register(name: String?, age: String?, sex: String?, height: String?, weight: String?) -> Bool {
        guard let name = name, name.count > 0 else {
            return false
        }
        // save to firebase
        Node.get(.users).child("name").setValue(name)
        Node.get(.users).child("age").setValue(age)
        Node.get(.users).child("sex").setValue(sex)
        Node.get(.users).child("height").setValue(height)
        Node.get(.users).child("weight").setValue(weight)
        Setting.didRegister = true
        return true
    }
}
