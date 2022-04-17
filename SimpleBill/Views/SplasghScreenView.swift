//
//  SplasghScreenView.swift
//  SimpleBill
//
//  Created by RHC0DE on 24/02/2022.
//

import SwiftUI

struct SplasghScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            WelcomeView()
        } else {
            VStack {
                VStack {
                    Image(Images.logo)
                        .font(.system(size: 80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .accentColor(Color.black)
            .background(Color(red: 0.054, green: 0.462, blue: 0.743))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.isActive = true
                }
            }
            
        }
            
    }
}

struct SplasghScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplasghScreenView()
    }
}
