//
//  DetailView.swift
//  SimpleBill
//
//  Created by Guest User on 01/04/2022.
//

import SwiftUI

struct DetailView: View {
    
    let category: String
    
    var body: some View {
        
        VStack {
            
            VStack(spacing: 15) {
                Button(action: {}, label: {
                    Text("Receipt")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color(red: 0.054, green: 0.462, blue: 0.743))
                        .cornerRadius(12)
                })
                
                Line()
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 2, lineCap: .butt, lineJoin: .miter,  dash: [10]))
                    .frame(height: 1)
                    .padding(.horizontal)
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Bill type")
                            .font(.caption)
                        
                        Text(category)
                            .font(.title3)
                            .fontWeight(.heavy)
                    })
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading, spacing: -1, content: {
                        Text("Total Bill")
                            .font(.caption)
                        
                        Text("$750")
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding(.top, 10)
                    })
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                    
                }.padding()
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Date")
                            .font(.caption)
                        
                        Text("21/07/2019")
                            .font(.title3)
                            .fontWeight(.heavy)
                    })
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading, spacing: -1, content: {
                        Text("Time")
                            .font(.caption)
                        
                        Text("15:06:02")
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding(.top, 10)
                    })
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                    
                }.padding()
            
    
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: -10, content: {
                        Text("Number of people").font(.caption)
                        Text("2")
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding(.top, 10)
                            
                    })
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading, spacing: -10, content: {
                        Text("Amount per person")
                            .font(.caption)
                        
                        Text("$375")
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding(.top, 10)
                    })
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                    
                    
                }
                
                HStack {
                    Image(Images.receiptBilly)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        

                }.padding(-20)
                
            }
                .frame(maxWidth: .infinity)
                .padding()
                .background((Color(red: 0.989, green: 0.308, blue: 0.309).opacity(0.99)))
                .cornerRadius(25)
                .padding(.horizontal)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.054, green: 0.462, blue: 0.743).ignoresSafeArea(.all, edges: .all))

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(category: "TEst")
    }
}
