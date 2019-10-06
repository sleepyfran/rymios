//
//  LoggedInProfile.swift
//  rymios
//
//  Created by Fran González on 06/10/2019.
//  Copyright © 2019 Fran González. All rights reserved.
//

import SwiftUI

struct LoggedInProfile: View {
    var loggedUser: User
    
    var body: some View {
        Text(self.loggedUser.username)
    }
}

struct LoggedInProfile_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInProfile(
            loggedUser: User(username: "sleepyfran", gender: .male, age: 23)
        )
    }
}
