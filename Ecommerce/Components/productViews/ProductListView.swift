//
//  ProductListView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 27/06/2024.
//

import SwiftUI

struct ProductListView: View {
    @EnvironmentObject var cartManager: CartManager
    @State var product: Product
    
    var body: some View {
        ZStack{
            Color("kSecondary")
            
            ZStack(alignment: .bottomTrailing){
                HStack(alignment:.top, spacing: 18){
                    Image(product.image)
                        .resizable()
                        .frame(width: 75, height: 75)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    VStack(alignment:.leading, spacing: 18){
                        Text(product.name)
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(.vertical, 1)
                            .foregroundStyle(Color.black)
                        
                        HStack(alignment:.bottom ,spacing: 32){
                            Text(product.supplier)
                                .font(.callout)
                                .foregroundStyle(Color(.gray))
                            
                            Text("$ \(product.price)")
                                .bold()
                                .foregroundStyle(Color.black)
                        }
                        
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        cartManager.addToCart(product: product)
                        
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .foregroundStyle(Color("kPrimary"))
                            .frame(width: 35, height: 35)
                            .padding(.vertical)
                    })
                    
                    
                    
                }
                .padding(.all ,10)
                
            }
        }
        .frame(maxWidth:.infinity)
        .frame(height: 90)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

#Preview {
    ProductListView(product: productList[0])
}
