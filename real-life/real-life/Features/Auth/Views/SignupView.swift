//
//  SignupView.swift
//  real-life
//
//  Created by Joshua Hodgson on 3/26/25.
//

import SwiftUI

struct SignupView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    @State private var errorMessage: String?
    
    @EnvironmentObject var authViewModel: AuthViewModel

    
    
    var isSignInButtonDisabled: Bool {
        [email, password].contains(where: \.isEmpty)
    }
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 15) {
                Text("It's Real Life")
                    .font(.title)
                    .padding(10)
                
                TextField("Email", text: $email, prompt: Text("Email").foregroundColor(.blue))
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    }
                    .padding(.horizontal)
                    .autocapitalization(.none)
                
                HStack {
                    Group {
                        if showPassword {
                            TextField("Password", text: $password, prompt: Text("Password").foregroundColor(.blue))
                        } else {
                            SecureField("Password", text: $password, prompt: Text("Password").foregroundColor(.blue))
                        }
                    }
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    }
                    .autocapitalization(.none)
                    
                    
                    Button {
                        showPassword.toggle()
                    } label: {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
                
                VStack(spacing: 10) {
                    Button {
                        
                    } label: {
                        Text("Sign In")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(
                        isSignInButtonDisabled ? LinearGradient(colors: [.gray], startPoint: .topLeading, endPoint: .bottomTrailing) :
                            LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .disabled(isSignInButtonDisabled)
                    .cornerRadius(20)
                    .padding()
                    
                    
                    Text("New User? Register here")
                        .underline()
                        .font(.headline)
                        .foregroundColor(.blue)
                    
                }
            }
        }
    }
}
#Preview {
    SignupView()
}
