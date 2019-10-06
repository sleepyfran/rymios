//
//  LoginProfile.swift
//  rymios
//
//  Created by Fran González on 06/10/2019.
//  Copyright © 2019 Fran González. All rights reserved.
//

import SwiftUI

struct NotLoggedInProfile: View {
    @State var showLogin = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Log into Rate Your Music to be able to rate music and see your collection")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 15)
                
                Button("Login") {
                    self.showLogin.toggle()
                }
            }
            .padding()
        }
        .sheet(isPresented: $showLogin) {
            Login(username: "", password: "")
        }
    }
}

struct NotLoggedInProfile_Previews: PreviewProvider {
    static var previews: some View {
        NotLoggedInProfile()
    }
}
