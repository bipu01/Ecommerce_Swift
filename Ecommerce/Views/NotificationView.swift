//
//  NotificationView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack{
            HStack{
                Text("Your notifications")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("kPrimary"))
                    .padding(10)
                    .padding(.horizontal)
                Spacer()
            }
            
            Spacer()
            
            ScrollView{
                
                
                
                Text("No new notificaiton")
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
    }
}

#Preview {
    NotificationView()
}
