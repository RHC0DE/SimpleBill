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
    let tipPercentages = [0,5,10, 15]
    
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
    
    
    var body: some View {
        
        NavigationView {
            Form{
                
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
                
            }.navigationTitle("Bill Splitter").self.keyboardType(.decimalPad)
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
