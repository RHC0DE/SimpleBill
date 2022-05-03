//
//  DetailView.swift
//  SimpleBill
//
//  Created by Guest User on 01/04/2022.
//

import SwiftUI

struct DetailView: View {
    
    @State var customAlert = false
    let category: String
    let numberOfPeople: Int
    let amountPerPerson: Double
    let totalBill: String
    
    var body: some View {
        
        
        VStack {
            
            Spacer()
            
            VStack(spacing: 15) {
                
                Text(category)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                if customAlert {
                    
                    CustomAlertView(show: $customAlert)
                }
                
                
                Button(action: {
                    
                    withAnimation {
                        
                        customAlert.toggle()
                    }
                    
                }, label: {
                    Text("Receipt")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color(red: 0.054, green: 0.462, blue: 0.743))
                        .cornerRadius(12)
                    
                })
                
                LineView()
                
                HStack {
                    
                    Text("Number of people").font(.title3)
                    
                    Spacer()
                    
                    Text("\(numberOfPeople)")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .padding(.top, 10)
                    
                }
                
                HStack {
                    Text("Amount per person")
                        .font(.title3)
                    
                    Spacer()
                    
                    Text("$\(amountPerPerson, specifier: "%.2f")")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .padding(.top, 10)
                }
                
                LineView()
                
                HStack {
                    Text("Total Bill")
                        .font(.title3)
                    
                    Spacer()
                    
                    Text("$\(totalBill)")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .padding(.top, 10)
                    
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
            Spacer()
            Spacer()
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.054, green: 0.462, blue: 0.743).ignoresSafeArea(.all, edges: .all))
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        DetailView(category: "Group Dinner", numberOfPeople: 4, amountPerPerson: 375.23, totalBill: "1500.92")
    }
}

struct BlurView : UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style:                   .systemThinMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}

struct CustomAlertView : View {
    
    @Binding var show : Bool
    
    var body: some View{

        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            
            VStack(spacing: 25) {
                
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color.green)


                
                Text(getToday())
                    .font(.title)
                
                Button(action: {}) {
                    
                    Text("Back to Home")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.horizontal,25)
                        .padding(.vertical)
                        .clipShape(Capsule())
                        .frame(width: 250, height: 50)
                        .background((Color(red: 0.989, green: 0.308, blue: 0.309).opacity(0.99)))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    
                }
                
            }
            .padding(.vertical, 25)
            .padding(.horizontal, 30)
            .background(BlurView())
            .cornerRadius(25)
            
            Button(action: {
                
                withAnimation {
                    
                    show.toggle()
                }
                
            }) {
                
                Image(systemName: "xmark.circle")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor((Color(red: 0.989, green: 0.308, blue: 0.309).opacity(0.99)))
                
            }
            .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color.primary.opacity(0.35)
        )
            
    }
    
    func getToday() -> String {
        let date = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let thedate = "\(day)/\(month)/\(year) \(hour):\(minutes)"
        return thedate
    }
}
