//
//  CartButton.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.

import SwiftUI

struct CartButton: View {
//    @ObservedObject var cartManager: CartManager
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationLink {
             CartView()
         } label: {
             ZStack(alignment: .topTrailing) {
                 Image(systemName: "bag.fill")
                     .padding(5)
                     .foregroundStyle(Color.black)
                 
                 if(cartManager.numOfProducts > 0){
                     Text("\(cartManager.numOfProducts)")
                         .frame(width: 15, height: 15)
                         .foregroundStyle(Color(.white))
                         .background(Color(.green))
                         .font(.caption2)
                         .clipShape(Circle())
                 }
             }
         }
    }
}

//#Preview {
//    CartButton(cartManager: CartManager)
//}
