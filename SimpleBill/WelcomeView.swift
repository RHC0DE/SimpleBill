//
//  WelcomeView.swift
//  SimpleBill
//
//  Created by RHC0DE on 06/03/2022.
//

import SwiftUI

struct WelcomeView: View {
    @State var currentngle: Angle = .degrees(30)
    
    var body: some View {
        NavigationView {
            
        VStack{
            
            VStack(spacing: 20){
                
                Image(Images.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .rotationEffect(currentngle)
                    
                Text(Strings.WelcomePage.headTitle)
                    .bold()
                    .font(.title)
                
                Text(Strings.WelcomePage.subTitle)
                
                
                NavigationLink(destination: ContentView(), label:  {
                    Text(Strings.WelcomePage.btnLetsStart)
                        .fontWeight(.bold)
                        .frame(width: 250, height: 50)
                        .background(Color(red: 0.989, green: 0.308, blue: 0.309))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                })
                
//                Button {
//                    //action
//
//                } label: {
//
//                }
//                .background(Color(red: 0.931, green: 0.11, blue: 0.144))
//                .buttonStyle(.bordered)
//                .controlSize(.large)
//                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
           
                
            }
            .multilineTextAlignment(.center)
            .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .accentColor(Color.black)
        .background(Color(red: 0.054, green: 0.462, blue: 0.743))
    }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
