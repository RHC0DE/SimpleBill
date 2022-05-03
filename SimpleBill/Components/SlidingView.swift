//
//  SlidingView.swift
//  SimpleBill
//
//  Created by Guest User on 26/04/2022.
//

import SwiftUI
import SlidingTabView


struct SlidingView: View {
    
    @State private var tabIndex = 0

    var body: some View {
        
        VStack {
            
            SlidingTabView(selection: $tabIndex, tabs: ["New", "Previous"], animation: .easeOut)
            Spacer()
            
            if tabIndex == 0 {
               
                WelcomeView()
                
            } else if tabIndex == 1 {
                
                SplitHistoryView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .accentColor(Color.black)
        .background(Color(red: 0.054, green: 0.462, blue: 0.743).ignoresSafeArea(.all, edges: .all))
    }
}

struct SlidingView_Previews: PreviewProvider {
    static var previews: some View {
        SlidingView()
    }
}
