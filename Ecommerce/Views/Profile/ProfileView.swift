//
//  AccountView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        NavigationStack(){
            ScrollView{
                HStack(){
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                    
                    NavigationLink {
                        
                        ProfileEditView()
//                            .environmentObject(userManager)
                        
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25)
                            .padding(.horizontal, 24)
                            .foregroundStyle(Color("kPrimary"))
                    }
                    
                    Spacer()
                    
                }
                    
                    
                ProfileImageAndText()
//                    .environmentObject(userManager)
                
                
                IconStatusProfile()
//                    .environmentObject(userManager)
                
                

                VStack(alignment:.leading){
                    
                    Text("Ph num: \(userManager.currentUser.phone)")
                        .padding(.bottom, 8)
                    
                    Text("Email: \(userManager.currentUser.email)")
                }
                .frame(width: 500)
                .padding(.top, 42)

            }
            .frame(width: 300)
            Spacer()
                
        }
        
    }
}

#Preview {
    AccountView()
        .environmentObject(UserManager())
}


struct ProfileImageAndText:View{
    @EnvironmentObject var userManager: UserManager
    
    var body:some View{
        VStack{
            ZStack(alignment:.topTrailing){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .padding(10)
                
                Image(systemName: "pencil.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color(.white), Color("green"))
                    .padding(.top, 5)
            }
            
            VStack{
                Text("\(userManager.currentUser.name)")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("\(userManager.currentUser.address)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.gray))
            }
        }
    }
}


struct IconStatusProfile:View {
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        HStack(spacing: 42){
            VStack{
                Image(systemName: "truck.box.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    
                Text("6 Ordered")
                    .font(.caption)
            }
            
            VStack{
                Image(systemName: "shippingbox.and.arrow.backward.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                
                Text("0 Returned")
                    .font(.caption)
            }
            
            VStack{
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                
                Text("364 Points")
                    .font(.caption)
            }
        }
        .padding(.top, 28)
        .foregroundStyle(Color("kPrimary"))
    }
}
