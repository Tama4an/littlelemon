//
//  UserProfile.swift
//  Little Lemon
//
//  Created by Valentyn Kotenko on 22/5/25.
//

import SwiftUI

struct UserProfile: View {
    
    let firstName = UserDefaults.standard.string(forKey: kFirstName)
    let lastName = UserDefaults.standard.string(forKey: kLastName)
    let email = UserDefaults.standard.string(forKey: kEmail)
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack(spacing: 32){
            Text("Personal information")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 16)
            
            GeometryReader { proxy in
                let side = min(max(proxy.size.width * 0.4, 80), 200)
                
                Image("image-placeholder")
                    .resizable()
                    .scaledToFill()
                    .frame(width: side, height: side)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 2))
                    .shadow(radius: 4)
                    .position(x: proxy.size.width / 2, y: side / 2)
            }
            .frame(height: 200)
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "person.fill")
                    Text("\(firstName ?? "Jonh") \(lastName ?? "Doe")")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                HStack {
                    Image(systemName: "envelope.fill")
                    Text(email ?? "john.d@gmail.com")
                        .font(.body)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 24)
            
            Button(action: {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                self.presentation.wrappedValue.dismiss()
            }) {
                Text("Logout")
                    .fontWeight(.medium)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 40)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.yellow))
            }
            .foregroundColor(.black)
            .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color(.systemBackground))
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    UserProfile()
}
