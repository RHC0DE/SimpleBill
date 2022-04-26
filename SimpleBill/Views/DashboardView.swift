//
//  DashboardView.swift
//  SimpleBill
//
//  Created by Guest User on 25/04/2022.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                VStack(spacing: 20) {
                    

                        
                    
                    Spacer(minLength: 0)

                }
                .multilineTextAlignment(.center)
                .padding()
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .accentColor(Color.black)
            .background(Color(red: 0.054, green: 0.462, blue: 0.743).ignoresSafeArea(.all, edges: .all))
            .navigationTitle("")
            
        }

        
    
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
