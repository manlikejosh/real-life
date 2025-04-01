//
//  real_lifeApp.swift
//  real-life
//
//  Created by Joshua Hodgson on 3/25/25.
//

import SwiftUI

@main
struct real_lifeApp: App {
    @StateObject private var authViewModel = AuthViewModel()
     
     init() {
         FirebaseManager.shared // Initialize Firebase
     }
     
     var body: some Scene {
         WindowGroup {
             ContentView()
                 .environmentObject(authViewModel) // Proper usage
         }
     }
}
