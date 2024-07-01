//
//  ProductCardView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    var body: some View {
        ZStack{
            Color("kSecondary")
            
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .clipShape(RoundedRectangle(cornerRadius: 12))

                    Text(product.name)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .foregroundStyle(Color.black)
                    
                    Text(product.supplier)
                        .padding(.vertical, 0.5)
                        .font(.caption)
                        .foregroundStyle(Color(.gray))
                    
                    Text("$ \(product.price)")
                        .bold()
                        .padding(.bottom, 8)
                        .foregroundStyle(Color.black)
                        
                }
                Button(action: {
                    cartManager.addToCart(product: product)
                    
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundStyle(Color("kPrimary"))
                        .frame(width: 35, height: 35)
                        .padding(.all, 8)
                })
            }
        }
        .frame(width: 185, height: 260)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    
    }
}

#Preview {
    ProductCardView(product: productList[0])
        .environmentObject(CartManager())
}
