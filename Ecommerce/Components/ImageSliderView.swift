//
//  ImageSliderView.swift
//  Ecommerce
//
//  Created by Biplove Gautam on 18/06/2024.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var slides = ["leather", "nice", "gray", "beautiful", "outdoor", "green"]
    var body: some View {
        ZStack(alignment:.bottomLeading){
            ZStack(alignment:.trailing){
                Image(slides[currentIndex])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 180)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            HStack{
                ForEach(0..<slides.count-1){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                    
                }
            }
            .padding()
        }
        .padding(8)
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5,
                                 repeats: true) { timer in
                if self.currentIndex + 1 == self.slides.count{
                    self.currentIndex = 0
                }else{
                    self.currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    ImageSliderView()
}
