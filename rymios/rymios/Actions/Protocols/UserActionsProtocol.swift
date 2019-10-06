//
//  UserActions.swift
//  rymios
//
//  Created by Fran González on 06/10/2019.
//  Copyright © 2019 Fran González. All rights reserved.
//

import Foundation

protocol UserActionsProtocol {
    static func getUser() -> User?
    static func login(loginUser: LoginUser) -> User?
    static func logout()
}
