//
//  VayooApp.swift
//  Vayoo
//
//  Created by Victor Dantas on 05/12/24.
//

import SwiftUI
import FirebaseCore

@main
struct VayooApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            // Comentário
            // Mais um comentário
        }
    }
}
