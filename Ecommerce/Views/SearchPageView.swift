//
//  SearchView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct SearchPageView: View {
    @State private var searchedWord: String = ""
    @State var searchResults: [Product] = []
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        
        NavigationStack{
            HStack{
                Text("Search for item")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("kPrimary"))
                    .padding(10)
                    .padding(.horizontal)
                Spacer()
            }
            
            HStack{
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                TextField("Search Items", text: $searchedWord)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(width:300,  height: 20)
                
            }
            .background(Color("kSecondary"))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.top, 1)
            .padding(.horizontal)
            
            
            Spacer()
            
            ScrollView{
                
                Text("Search to get results")
                    .font(.callout)
                    .fontWeight(.medium)
                    .frame(maxWidth:.infinity)
                    .frame(maxHeight: .infinity)
                    .foregroundStyle(Color.gray)
                
                Spacer()
            }
            .padding()
            .frame(maxWidth:.infinity)
            .frame(maxHeight: .infinity)
            .background(Color("bgGray"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            
        }
        
//        VStack{
//            HStack{
//                Image(systemName: "magnifyingglass")
//                    .resizable()
//                    .frame(width: 20, height: 20)
//                    .aspectRatio(contentMode: .fit)
//                    .padding()
//                
//                TextField("Search Items", text: $searchedWord)
//                    .padding()
//                    .clipShape(RoundedRectangle(cornerRadius: 8))
//                    .frame(width:300,  height: 20)
//                
//            }
//            .background(Color("kSecondary"))
//            .clipShape(RoundedRectangle(cornerRadius: 8))
//            .padding(.top, 1)
//            .padding(.horizontal)
//            
//            
//            if(searchedWord == ""){
//                Spacer()
//                Text("Search to get results")
//                    .foregroundStyle(Color.gray)
//            }else{
////                getResults()
//                
////                func getResults() async{
////                    ForEach (cartManager.products){
////                        
////                    }
////                }
//                
//            }
//            
//            Spacer()
//            
//        }
    }
}

#Preview {
    SearchPageView()
}

struct SearchResults:View {
    @EnvironmentObject var cartManager: CartManager
    @Binding var searchedWord: String
    @Binding var searchResults: [Product]
    var body: some View {
        
        ScrollView {
//            ForEach(cartManager.products){ product in
//                if product.name == searchedWord {
////                    Text("\(product)")
//                    Text("found")
//                }
//            }
            Text("Test")
        }
        
    }
}

