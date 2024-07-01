//
//  ProductPage.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct ProductPage: View {
    var product: Product
    var body: some View {
        VStack(alignment:.leading){
            
            Text(product.name)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 12)
                .foregroundStyle(Color("kPrimary"))
            
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 330, height: 350)
//                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text("Price: $ \(product.price)")
                .font(.headline)
                .bold()
                .padding(.top, 12)
            
            Text("\(product.desc)")
                .padding(.top, 12)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Get Now")
                    .foregroundStyle(Color(.white))
                    .frame(width:300, height: 30)
                    .padding()
                    .background(Color("kPrimary"))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
            })
            
            Spacer()
            
            
        }.padding()
    }
}

#Preview {
    ProductPage(product: productList[0])
}
