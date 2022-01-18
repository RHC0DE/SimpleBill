//
//  ContentView.swift
//  SimpleBill
//
//  Created by RHC0DE on 18/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var costInTotal = "" // The total cost that has to be payed
    @State private var numberOfPeople = 4 // Consist of the amount of people
    @State private var indexTip = 2 // Serves as tip value selector
    let tipPercentages = [0,5,10, 15]
    
    /**
     This is a function that calculates the total costs
     */
    func getTotalCosts() -> Double {
        // Tip percentage calculated with total amount
        let tip = Double(tipPercentages[indexTip])
        let totaleOrderCost = Double(costInTotal) ?? 0
        
        // The final order cost calculated with the selected tip percentage
        let finalOrderCosts =  ((totaleOrderCost / 100 * tip) + totaleOrderCost)
        
        // Returns the final order that each person should pay
        return finalOrderCosts / Double(numberOfPeople)
    }
    
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
