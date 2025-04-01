//
//  LoginView.swift
//  real-life
//
//  Created by Joshua Hodgson on 3/26/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
            
            Button("Sign In") {
                authViewModel.signIn(email: email, password: password)
            }
            
            Button("Create Account") {
                authViewModel.signUp(email: email, password: password)
            }
            
            Button("Forgot Password?") {
                authViewModel.resetPassword(email: email)
            }
        }
        .padding()
    }
}
