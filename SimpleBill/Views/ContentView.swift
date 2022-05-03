//
//  ContentView.swift
//  SimpleBill
//
//  Created by RHC0DE on 18/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var costInTotal = "" // The total cost that has to be payed
    @State private var numberOfPeople = 1 // Consist of the amount of people
    @State private var selectedTipPercentage = 0 // Serves as tip value selector
    @State private var billTypeSelection = 0
    @State private var confirm = false
    @State private var didConfirmSplit = false
    
    let billTypes = ["choose", "Restaurant", "Group Activity", "Groceries"]
    let tipPercentages = [0,5,10, 15]
    
    
    init() {
        UITableView.appearance().backgroundColor =
            .clear
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                HStack{
                    
                    NavigationLink(destination: WelcomeView().navigationBarHidden(true)) {
                        
                        Image(systemName: Strings.BackandSplitterView.leftarrow)
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .padding(5)
                    }
                    
                    Spacer()
                    
                }.padding(.leading)
                
                NavigationLink(destination: DetailView(category: billTypes[billTypeSelection], numberOfPeople: numberOfPeople, amountPerPerson: getTotalCosts(), totalBill: costInTotal ).navigationBarHidden(true), isActive: $didConfirmSplit) {  }
                
                Form{
                    
                    Section(header: Text("choose your bill type")) {
                        Picker("Bill type: ", selection: $billTypeSelection) {
                            ForEach(0..<billTypes.count) {
                                Text(self.billTypes[$0])
                            }
                        }
                    }
                    
                    Section(header: Text("enter the desired amount")) {
                        // Binds the entered value from the user to the $costInTotal variable
                        TextField("Amount", text: $costInTotal)
                    }
                    
                    Section(header: Text("select percentage amount for the tip")) {
                        // A Picker that containts a list of all the percetage values in it
                        Picker("Tip percentage (%)", selection: $selectedTipPercentage) {
                            ForEach(0 ..< tipPercentages.count) {
                                Text("\(tipPercentages[$0])%")
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    
                    Section(header: Text("choose the amount of people")) {
                        Picker("Number of people", selection: $numberOfPeople) {
                            ForEach(0 ..< 26) {
                                Text("\($0) people ")
                            }
                        }
                    }
                    
                    Section(header: Text("total cost per person")) {
                        Text("€ \(getTotalCosts(),specifier: "%.2f")")
                        
                    }
                    
                }
                .navigationTitle("").self.keyboardType(.decimalPad)
                
                .foregroundColor(.black)
                
                Spacer()
                
                Button {
                    
                    confirm.toggle()
                    
                } label: {
                    Text("Confirm Split ")
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
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.054, green: 0.462, blue: 0.743).ignoresSafeArea(.all, edges: .all))
            .alert(isPresented: $confirm, content: {
                Alert(title: Text("Are you sure to split the bill"), message: Text("Confirm the split"),
                      
                      primaryButton: .default(Text("Confirm Split"), action:  {
                    didConfirmSplit = true
                    
                }),
                      secondaryButton: .destructive(Text("Cancel"), action: {
                }))
            })
            
        }
        .navigationBarHidden(true)
    }
    
    /**
     This is a function that calculates the total costs
     */
    func getTotalCosts() -> Double {
        // Tip percentage calculated with total amount
        let tip = Double(tipPercentages[selectedTipPercentage])
        let totaleOrderCost = Double(costInTotal) ?? 0
        
        // The final order cost calculated with the selected tip percentage
        let finalOrderCosts =  ((totaleOrderCost / 100 * tip) + totaleOrderCost)
        
        // Returns the final order that each person should pay
        return finalOrderCosts / Double(numberOfPeople)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
