//
//  HomeView.swift
//  real-life
//
//  Created by Joshua Hodgson on 3/26/25.
//

import SwiftUI
struct HomeView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Text("Welcome \(authViewModel.user?.email ?? "")")
            Button("Sign Out") {
                authViewModel.signOut()
            }
        }
    }
}
