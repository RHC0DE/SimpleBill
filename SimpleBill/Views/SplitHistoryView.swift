//
//  SplitHistoryView.swift
//  SimpleBill
//
//  Created by Guest User on 26/04/2022.
//

import SwiftUI

struct SplitHistoryView: View {
    
    @State private var splittedBills = ["Test", "Test2", "Test 3"]
    
    init() {
        UITableView.appearance().backgroundColor =
            .clear
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                VStack(spacing: 20) {


                    List {
                        ForEach(splittedBills, id: \.self) {bill in
                            
                            Text(bill)
                                .padding()
                                .swipeActions {
                                    Button(role: .destructive) {
                                        withAnimation {
                                            removeBill(bill: bill)
                                        }
                                    } label: {
                                        Label("Delete", systemImage: Strings.SplitHistoryView.bin)
                                    }
                                }
                            
                        }
                    }
                    
                }
                
            }
            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .accentColor(Color.black)
            .background(Color(red: 0.054, green: 0.462, blue: 0.743).ignoresSafeArea(.all, edges: .all))
            
        }
        
    }
    
    func removeBill(bill: String) {
        if let index = splittedBills.firstIndex(of: bill) {
            splittedBills.remove(at: index)
        }
        
    }
}
/*
 if let index = nameList.firstIndex(of: name) {
            nameList.remove(at: index)
        }
 */
struct SplitHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        SplitHistoryView()
    }
}
