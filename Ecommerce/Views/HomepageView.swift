//
//  HomepageView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct HomepageView: View {
    
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                
                ScrollView(.vertical, showsIndicators: true){
                    VStack{
                        AppBar()
                            .environmentObject(cartManager)

//                        VStack {
//                            Text("$ \(cartManager.totalPrice)")
//                                .font(.title2)
//                            Text("Total :\(cartManager.numOfProducts)")
//                            addToCart(cart: cartManager)
//                        }
                        
                        SearchView()
                        
                        ImageSliderView()
                        
                        CouchOptionSliderView()
                            .environmentObject(cartManager)
                        
                    }
                }
                
            }
        }
//        .padding(4)
        
    }
}

#Preview {
    HomepageView()
        .environmentObject(CartManager())
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading){
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                        .foregroundStyle(Color.black)
                    
                    Text("Kathmandu, Nepal")
                        .font(.title2)
                        .foregroundStyle(Color(.gray))
                    
                    Spacer()
                    
                    CartButton()
                        .environmentObject(cartManager)
                    
                }
                
                Text("Find The Most \nLuxurious ")
                    .font(.largeTitle .bold())
                    .foregroundStyle(Color.black)
                
                + Text("Furniture")
                    .font(.largeTitle .bold())
                    .foregroundStyle(Color("kPrimary"))
            }
        }
        .padding()
    }
}

struct CouchOptionSliderView : View {
    @EnvironmentObject var cartManager: CartManager
    @State private var verticalView: Bool = false
    
    var body: some View {
        HStack{
            Text("New Rivals")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(Color.black)
            
            Spacer()
            
            Image(systemName: "circle.grid.2x2.fill")
                .foregroundStyle(Color("kPrimary"))
                .onTapGesture {
                    verticalView.toggle()
                }
        }
        .padding()

        //Images and Texts
        if verticalView == true {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:10){
                    ForEach(productList, id:\.id){product in
                        
                        NavigationLink {
                            ProductPage(product: product)
                            
                        } label:{
                            ProductListView(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                }
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 12)
            
        }else{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:10){
                    ForEach(productList, id:\.id){product in
                        
                        NavigationLink {
                            ProductPage(product: product)
                            
                        } label:{
                            ProductCardView(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                }
            }
            .padding(.leading, 8)
            .padding(.bottom, 12)
        }
    }
}
