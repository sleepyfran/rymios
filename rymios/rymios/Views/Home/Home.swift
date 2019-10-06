//
//  Home.swift
//  rymios
//
//  Created by Fran González on 06/10/2019.
//  Copyright © 2019 Fran González. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var showProfile = false
    
    var profileButton: some View {
        Button(action: { self.showProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("Rate Your Music profile"))
                .padding()
        }
    }
    
    let user = UserActions.getUser()
    
    var body: some View {
        NavigationView {
            List {
                Text("Test")
            }
            .navigationBarTitle("New releases")
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showProfile) {
                Profile()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
