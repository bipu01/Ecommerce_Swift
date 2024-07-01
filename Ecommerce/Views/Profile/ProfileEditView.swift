//
//  ProdileEditView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 27/06/2024.
//

import SwiftUI

struct ProfileEditView: View {
    @EnvironmentObject var userManager: UserManager
    
    @State var phone: String = ""
    @State var name: String = ""
    @State var address: String = ""
    @State var email: String = ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                Text("Update your info")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding()
                
                ProfileImageAndTextEdit()
                    .environmentObject(userManager)

                VStack(alignment:.leading){
                    Text("Name:")
                        .padding(.bottom, 2)
                    
                    TextField("\(userManager.currentUser.name)",text:$name)
                        .padding(8)
                        .frame(width: 350, height: 40)
                        .background(Color("bgGray"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Text("Address:")
                        .padding(.bottom, 2)
                    
                    TextField("\(userManager.currentUser.address)",text:$address)
                        .padding(8)
                        .frame(width: 350, height: 40)
                        .background(Color("bgGray"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    
                    Text("Ph num:")
                        .padding(.bottom, 2)
                    
                    TextField("\(userManager.currentUser.phone)",text:$phone)
                        .padding(8)
                        .frame(width: 350, height: 40)
                        .background(Color("bgGray"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        
                    Text("Email:")
                        .padding(.top, 8)
                    
                    TextField("\(userManager.currentUser.email)",text:$email)
                        .padding(8)
                        .frame(width: 350, height: 40)
                        .background(Color("bgGray"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding(.top, 42)
                
                
                
                Button(action: {
                    
                    userManager.currentUser.changeName(name: name)
                    userManager.currentUser.changePhone(phone: phone)
                    userManager.currentUser.changeAddress(address: address)
                    userManager.currentUser.changeEmail(email: email)
                    
                }, label: {
                    Text("Submit")
                        .frame(width: 350, height: 50)
                        .background(Color("kPrimary"))
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.top, 48)
                })

            }
            .frame(width: 300)
            Spacer()
                
        }
        
    }
}

#Preview {
    ProfileEditView()
        .environmentObject(UserManager())
}



struct ProfileImageAndTextEdit:View{
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
        }
    }
}


//struct IconStatusProfileEdit:View {
//    var body: some View {
//        HStack(spacing: 42){
//            VStack{
//                Image(systemName: "truck.box.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 20, height: 20)
//                    
//                Text("6 Ordered")
//                    .font(.caption)
//            }
//            
//            VStack{
//                Image(systemName: "shippingbox.and.arrow.backward.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 20, height: 20)
//                
//                Text("0 Returned")
//                    .font(.caption)
//            }
//            
//            VStack{
//                Image(systemName: "star.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 20, height: 20)
//                
//                Text("364 Points")
//                    .font(.caption)
//            }
//        }
//        .padding(.top, 28)
//        .foregroundStyle(Color("kPrimary"))
//    }
//}
