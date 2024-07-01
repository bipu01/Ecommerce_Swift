//
//  EcommerceApp.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 17/06/2024.
//

import SwiftUI

@main
struct EcommerceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CartManager())
                .environmentObject(UserManager())
        }
    }
}
