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
            Image(.loading).resizable().scaledToFill()
            
            VStack{
                Spacer()
                
                Text("Welcome to\n CLODZ")
                    .font(.system(size: 32))
                    .bold()
                    .foregroundColor(.black)
                    .padding(.bottom, 100)
                    .multilineTextAlignment(.center)
            }.padding(.horizontal, 20)
                .frame(alignment: .center)
            
        }.ignoresSafeArea()
    }
}

#Preview {
    SplashScreenView()
}
