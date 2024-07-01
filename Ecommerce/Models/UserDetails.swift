//
//  UserDetails.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 27/06/2024.
//

import Foundation


class UserDetails: Identifiable, ObservableObject {
    @Published var id = UUID()
    @Published var name: String
    @Published var age: Int
    @Published var email: String
    @Published var phone: String
    @Published var address: String
    @Published var joinedSince: Date
    @Published var isPrimiumUser: Bool
    
    init(name: String, age: Int, email: String, phone: String, address: String , joinedSince: Date, isPrimiumUser: Bool) {
        self.name = name
        self.age = age
        self.email = email
        self.phone = phone
        self.joinedSince = joinedSince
        self.isPrimiumUser = isPrimiumUser
        self.address = address
    }
    
    func changeName(name:String){
        self.name = name
    }
    
    func changeAge(age:Int){
        self.age = age
    }
    
    func changeEmail(email:String){
        self.email = email
    }
    
    func changeIsPremiumUser(status:Bool){
        self.isPrimiumUser = status
    }
    
    func changePhone(phone:String){
        self.phone = phone
    }
    
    func changeAddress(address:String){
        self.address = address
    }
}
 



