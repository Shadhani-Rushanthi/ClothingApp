//
//  ClothingAppApp.swift
//  ClothingApp
//
//  Created by NIBMPC04PC06 on 2024-03-18.
//

import SwiftUI

@main
struct ClothingAppApp: App {
    
    @State private var showSplash = true
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                if showSplash {
                    SplashScreenView()
                        .transition(.opacity)
                        .animation(.easeInOut(duration: 1.5))
                } else {
                    LoginView()
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    withAnimation{
                        self.showSplash = false
                    }
                }
            }
//            NavigationView{
//                LoadingView()
//            }
        }
    }
}
