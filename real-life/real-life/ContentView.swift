//
//  ContentView.swift
//  real-life
//
//  Created by Joshua Hodgson on 3/26/25.
//

import SwiftUI
struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthViewModel // Receive the object
    
    var body: some View {
        Group {
            if authViewModel.user != nil {
                HomeView()
            } else {
                LoginView()
            }
        }
    }
}
