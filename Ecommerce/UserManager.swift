//
//  UserManager.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 27/06/2024.
//

import Foundation


class UserManager: ObservableObject {
    @Published var currentUser = UserDetails(name: "John Doe",
                                             age: 22,
                                             email: "johnDoe123@gmail.com",
                                             phone: "9812345678",
                                             address: "Kathmandu, Nepal",
                                             joinedSince: .now,
                                             isPrimiumUser: true)
    

}
