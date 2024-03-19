//
//  SplashScreenView.swift
//  ClothingApp
//
//  Created by NIBMPC04PC06 on 2024-03-18.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack{
            Image(.loading).resizable().scaledToFill().clipped()
            
            VStack{
                Spacer()
                
                Text("Welcome to CLODZ")
                    .font(.system(size: 32))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width:350, height: 60)
                    .background(.black.opacity(0.65), in: Capsule())
                    .multilineTextAlignment(.center)
                    .padding()
            }.padding(.bottom, 100)
            
        }.edgesIgnoringSafeArea(.all)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

#Preview {
    SplashScreenView()
}
