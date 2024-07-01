//
//  CartView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var itemsInCart = CartManager()
    
    var body: some View {
        
        if(cartManager.products.count > 0){
            NavigationStack {
                
                HStack(){
                    Text("Your Orders: ")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("kPrimary"))
                        
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Checkout")
                            .frame(width: 100, height: 40)
                            .background(Color("kPrimary"))
                            .foregroundStyle(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
                }
                .padding(.horizontal, 24)
                    
                
                    ScrollView {
                        ForEach(cartManager.products){ product in
                            
                            NavigationLink {
                                ProductPage(product: product)
                            } label: {
                                CartItem(product: product)
                                    .environmentObject(cartManager)
                            }
                        }
                    }
                    .padding()
                
                HStack{
                    Spacer()
                    
                    Text("Total: ")
                        .font(.headline)
                    
                    Text("$ \(cartManager.totalPrice)")
                }
                .padding()
                .padding(.horizontal, 18)
                
//                Button(action: {}, label: {
//                    Text("Checkout")
//                        .frame(width: 300, height: 25)
//                        .padding()
//                        .background(Color("kPrimary"))
//                        .foregroundStyle(Color(.white))
//                        .clipShape(RoundedRectangle(cornerRadius: 12))
//                        
//                        
//                })
//                Rectangle()
//                Spacer()
            }
            
            
        }else{
            Text("Not loaded")
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}


struct CartItem: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(alignment:.top){
            Image("\(product.image)")
                .resizable()
                .frame(width: 70, height: 70)
                .aspectRatio(contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack( alignment:.leading){
                
                Text("\(product.name)")
                    .font(.title2)
                    .foregroundStyle(Color.black)
                    .padding(.vertical, 8)
                
                Text("$ \(product.price)")
                    .font(.subheadline)
                    .foregroundStyle(Color.gray)
            }
            
            
            Spacer()
            
            Image(systemName:"trash")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.vertical, 22)
                .padding(.horizontal, 12)
                .foregroundStyle(Color("trashRed"))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.vertical, 4)
    }
}
