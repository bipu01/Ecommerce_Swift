//
//  Product.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import Foundation

struct Product : Identifiable{
    var id = UUID()
    var name: String
    var desc: String
    var image: String
    var supplier: String
    var price: Int
}

//struct MockData {
//        let name = "Leather Couch"
//        let desc = "This is the description of the leather couch. This is very comfortable and feels luxirious"
//        let image = "leather"
//        let supplier = "IKEA"
//        let price = 4317
//}

var productList = [
    
    Product(name: "Leather Couch",
            desc: "This is the description of the leather couch. This is very comfortable and feels luxirious",
            image: "leather",
            supplier: "IKEA",
            price: 4317),
    
    Product(name: "Nice Couch",
            desc: "This is the description of the leather couch. This is very comfortable and feels luxirious",
            image: "nice",
            supplier: "Walmart",
            price: 3288),
    
    Product(name: "Gray Couch",
            desc: "This is the description of the leather couch. This is very comfortable and feels luxirious",
            image: "gray",
            supplier: "Home Dipo",
            price: 9982),
    
    Product(name: "Beautiful Couch",
            desc: "This is the description of the leather couch. This is very comfortable and feels luxirious",
            image: "beautiful",
            supplier: "IKEA",
            price: 5343),
    
    Product(name: "Outdoor Couch",
            desc: "This is the description of the leather couch. This is very comfortable and feels luxirious",
            image: "outdoor",
            supplier: "Walmart",
            price: 4554),
    
    Product(name: "Green Couch",
            desc: "This is the description of the leather couch. This is very comfortable and feels luxirious",
            image: "green",
            supplier: "IKEA",
            price: 8234),
]
