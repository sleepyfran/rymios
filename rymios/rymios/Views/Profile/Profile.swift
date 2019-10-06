//
//  Profile.swift
//  rymios
//
//  Created by Fran González on 06/10/2019.
//  Copyright © 2019 Fran González. All rights reserved.
//

import SwiftUI

struct Profile: View {
    let loggedUser: User? = nil
    
    var body: some View {
        self.loggedUser != nil
            ? AnyView(LoggedInProfile(loggedUser: self.loggedUser!))
            : AnyView(NotLoggedInProfile())
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
