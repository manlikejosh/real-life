//
//  FirebaseManager.swift
//  real-life
//
//  Created by Joshua Hodgson on 3/26/25.
//


import Foundation
import Firebase

class FirebaseManager: NSObject {
    static let shared = FirebaseManager()
    
    override init() {
        super.init()
        
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
    }
}
