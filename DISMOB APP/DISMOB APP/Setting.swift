//
//  Setting.swift
//  DISMOB APP
//
//  Created by Isa Muhammad on 29/04/2019.
//  Copyright © 2019 Isa Muhammad. All rights reserved.
//

import Foundation
class Setting {
    static var didRegister: Bool {
        get {
            let value = UserDefaults.standard.bool(forKey: "didRegister")
            return value
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "didRegister")
        }
    }
}
