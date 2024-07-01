//
//  SearchView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .foregroundStyle(Color.black)
                TextField("Search For furniture", text:$search)
                    .padding()
                    .foregroundStyle(Color.gray)
            }
            .background(Color("kSecondary"))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Image(systemName: "camera")
                .foregroundStyle(Color(.white))
                .padding()
                .background(Color("kPrimary"))
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding(.horizontal, 8)
        Spacer()
        
    }
}

#Preview {
    SearchView()
}
