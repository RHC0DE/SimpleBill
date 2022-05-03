//
//  WelcomeView.swift
//  SimpleBill
//
//  Created by RHC0DE on 06/03/2022.
//

import SwiftUI
import SlidingTabView

struct WelcomeView: View {
    
    @State private var tabIndex = 0
    
    var body: some View {
        
        NavigationView {
            
            VStack {
            
            SlidingTabView(selection: $tabIndex, tabs: ["New", "Previous splits"], animation: .easeOut)
                
            
            if tabIndex == 0 {
                                
                VStack(spacing: 20) {
                   
                    Spacer()
                    
                    Image(Images.moneySplitIcon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                    
                    
                    Text(Strings.WelcomePage.headTitle)
                        .bold()
                        .font(.title2)
                    
                    Text(Strings.WelcomePage.subTitle)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.284, brightness: 0.291))
                        .bold()
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentView().navigationBarHidden(true))  {
                        
                        HStack{
                            
                        Image(systemName: Strings.WelcomePage.banknote)
                            
                        Text(Strings.WelcomePage.btnLetsStart)
                            .fontWeight(.bold)

                        }
                        .frame(width: 250, height: 50)
                        .background((Color(red: 0.989, green: 0.308, blue: 0.309).opacity(0.99)))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    }
                               
                }
                .multilineTextAlignment(.center)
                .padding()
                
            } else if tabIndex == 1 {
                                
                 SplitHistoryView()
            }
            
        }
        .navigationBarHidden(true)
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
