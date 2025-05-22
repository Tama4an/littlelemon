//
//  Menu.swift
//  Little Lemon
//
//  Created by Valentyn Kotenko on 22/5/25.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 16) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Little Lemon")
                        .font(.system(size: 32, weight: .bold))
                    
                    Text("Turre")
                        .font(.system(size: 24, weight: .semibold))
                    
                    Text("""
                    We are a family owned Mediterranean restaurant, \
                    focused on traditional recipes served with a modern twist.
                    """)
                    .font(.system(size: 16))
                    .fixedSize(horizontal: false, vertical: true)
                }
                
                Spacer()
                
                Image("image-placeholder")
                    .resizable()
                    .frame(width: 120, height: 120)
            }
            
            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                Text("Search")
                Spacer()
            }
            
            List{}
        }
    }
}

#Preview {
    Menu()
}
