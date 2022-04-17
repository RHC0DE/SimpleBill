//
//  BillDetailView.swift
//  SimpleBill
//
//  Created by Guest User on 31/03/2022.
//

import SwiftUI

struct BillDetailView: View {
    var body: some View {
        
        VStack {
            
            
            VStack(spacing: 15) {
                Button(action: {}, label: {
                    Text("Receipt")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background()
                        .cornerRadius(12)
                })
                
                //Dotted Lines
                
            }.frame(maxWidth: .infinity)
                .padding()
                .background(.gray)
                .cornerRadius(25)
                .padding(.horizontal)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.054, green: 0.462, blue: 0.743).ignoresSafeArea(.all, edges: .all))

    }
}

struct BillDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BillDetailView()
    }
}
