//
//  CartManager.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = [
//        Product(name: "Example Sofa",
//                desc: "Description for the example sofa. This sofa is the most comfortable and luxirious sofa in the world",
//                image: "outdoor", supplier: "Bhatbhateni", price: 1930),
//        
//        Product(name: "Special edition",
//                desc: "Description for the example sofa. This sofa is the most comfortable and luxirious sofa in the world",
//                image: "gray", supplier: "Bhatbhateni", price: 1290)
//        
        
    ]
    
    @Published private(set) var numOfProducts: Int = 0
    @Published private(set) var totalPrice: Int = 0
    
    //    var totalPrice: Int {
    //        products.reduce(0) { $0 + $1.price }
    //    }
    
    func addToCart (product: Product){
        products.append(product)
        totalPrice += product.price
        numOfProducts += 1
    }
    
    func removeFromCart (product: Product){
        var i = 0
        while(i < products.count) {
            if products[i].id == product.id {
                products.remove(at: i)
                totalPrice -= product.price
                numOfProducts -= 1
                return
            }
            i += 1
        }
    }
}


