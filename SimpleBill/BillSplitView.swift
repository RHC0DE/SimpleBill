//
//  BillSplitView.swift
//  SimpleBill
//
//  Created by Guest User on 23/03/2022.
//

import SwiftUI

struct BillSplitView: View {
    var body: some View {
        NavigationView {
            
        VStack{
            
            VStack(spacing: 20){
            
                Form {
                    
                }.background(Col)
                    
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .accentColor(Color.black)
        .background(Color(red: 0.054, green: 0.462, blue: 0.743))
    }
    }
}

struct BillSplitView_Previews: PreviewProvider {
    static var previews: some View {
        BillSplitView()
    }
}
