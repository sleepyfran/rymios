//
//  Login.swift
//  rymios
//
//  Created by Fran González on 06/10/2019.
//  Copyright © 2019 Fran González. All rights reserved.
//

import SwiftUI

struct Login: View {
    @State var username: String
    @State var password: String
    
    var body: some View {
        VStack {
            Text("Log in to Rate Your Music")
                .font(.headline)
            
            TextField("Username", text: $username)
                .keyboardType(.emailAddress)
                .padding(.bottom, 10)
            SecureField("Password", text: $password)
                .padding(.bottom, 10)
            
            Button("Login") {
                
            }
            
            Text("Passwords are only sent to Rate Your Music and stored locally in the device")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(.all, 10)
        }
        .padding()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(username: "", password: "")
    }
}
