//
//  ContentView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 17/06/2024.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
            
        TabView {
                HomepageView()
//                    .environmentObject(cartManager)
                    .tabItem {
                        Image(systemName: "house")
                            
                        Text("Home")
                    }
                SearchPageView()
                    .tabItem{
                        Image(systemName: "magnifyingglass.circle")
                        Text("Search")
                    }
            
                NotificationView()
//                    .environmentObject(CartManager())
                    .tabItem {
                        Image(systemName: "bell")
                        Text("Notifications")
                    }

                CartView()
//                .environmentObject(CartManager())
                    .tabItem {
                        Image(systemName: "bag")
                        Text("Orders")
                    }
                   
                
                AccountView()
//                .environmentObject(userManager)
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }

            }
            .tint(Color("kPrimary"))
            .background(Color("kSecondary"))
        
    }

}



#Preview {
    ContentView()
        .environmentObject(CartManager())
        .environmentObject(UserManager())
}


enum Tab: String, CaseIterable{
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notification = "bell"
    case Cart = "bag"
    case Profile = "person"

    var tabName: String {
        switch self{
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notification:
            return "Notification"
        case .Cart:
            return "Cart"
        case .Profile:
            return "Profile"
        }
    }
}
