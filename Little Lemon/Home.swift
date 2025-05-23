//
//  Home.swift
//  Little Lemon
//
//  Created by Valentyn Kotenko on 22/5/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView {
            Menu().tabItem({
                Label("Menu", systemImage: "list.dash")
            })
            UserProfile().tabItem({
                Label("Profile", systemImage: "square.and.pencil")
            })
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Home()
}
