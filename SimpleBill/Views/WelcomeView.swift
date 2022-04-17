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
                
                Spacer(minLength: 0)

                Text(Strings.WelcomePage.headTitle)
                    .bold()
                    .font(.title)
                
                Text(Strings.WelcomePage.subTitle)
                
                Spacer(minLength: 0)
                
                NavigationLink(destination: ContentView())  {
                    Text(Strings.WelcomePage.btnLetsStart)
                        .fontWeight(.bold)
                        .frame(width: 250, height: 50)
                        .background((Color(red: 0.989, green: 0.308, blue: 0.309).opacity(0.99)))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                }
                
                Spacer(minLength: 0)
                           
            }
            .multilineTextAlignment(.center)
            .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .accentColor(Color.black)
        .background(Color(red: 0.054, green: 0.462, blue: 0.743).ignoresSafeArea(.all, edges: .all))
    }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
