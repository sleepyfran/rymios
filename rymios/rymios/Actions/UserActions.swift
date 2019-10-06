//
//  UserActions.swift
//  rymios
//
//  Created by Fran González on 06/10/2019.
//  Copyright © 2019 Fran González. All rights reserved.
//

import Foundation

struct UserActions: UserActionsProtocol {
    static func getUser() -> User? {
        return User(username: "Test", gender: .male, age: 23)
    }
    
    static func login(loginUser: LoginUser) -> User? {
        return User(username: "Test", gender: .female, age: 23)
    }
    
    static func logout() {
        
    }
}
