//
//  LoginView.swift
//  ClothingApp
//
//  Created by NIBMPC04PC06 on 2024-03-18.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName : String = ""
    @State var pwd : String = ""
    
    var body: some View {
        VStack{
            
            Image(.user)
                .resizable()
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray, lineWidth: 4)
                }
                .shadow(color: .red, radius: 7)
                .frame(width: 200, height: 200)
                .padding(.bottom, 60)
            
            VStack{
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(.red, lineWidth: 1.0)
                    .foregroundColor(.white)
                    .frame(height: 40)
                    .padding(.horizontal, 48 )
                    .overlay{
                        HStack{
                            Image(systemName: "envelop")
                                .foregroundColor(.gray)
                            SecureField("Enter user name", text: $userName)
                        }.padding(.horizontal, 56)
                    }
                
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(.red, lineWidth: 1.0)
                    .foregroundColor(.white)
                    .frame(height: 40)
                    .padding(.horizontal, 48)
                    .overlay{
                        HStack{
                            Image(systemName: "envelop")
                                .foregroundColor(.gray)
                            SecureField("Enter user name", text: $pwd)
                        }.padding(.horizontal, 56)
                    }
            }
        }.ignoresSafeArea()
            .padding()
    }
}

#Preview {
    LoginView()
}
