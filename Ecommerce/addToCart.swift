//
//  testUIView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 19/06/2024.
//

import SwiftUI

struct addToCart: View {
//    @ObservedObject var cart : CartManager
    @ObservedObject var cart = CartManager()
    var body: some View {
        Text("$ \(cart.totalPrice)")
        
        Button(action: {
            cart.addToCart(product: Product(name: "test sofa",
                                            desc: "desc of test sofa",
                                            image: "",
                                            supplier: "Cg electronics",
                                            price: 100))
        }, label: {
            Text("Add Item to cart")
        })
        .padding()
        .background(Color.black)
        .foregroundStyle(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        
        
    }
}

//#Preview {
//    testUIView()
//}
