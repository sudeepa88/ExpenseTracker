//
//  FirstExpenseView.swift
//  ExpenseTracker
//
//  Created by Sudeepa Pal on 02/06/25.
//

import SwiftUI

struct FirstExpenseView: View {
    
    let upiExpenses:[UPIExpenseModel] = [
        UPIExpenseModel(nameOfExpense: "Vehicle", amount: 60),
        UPIExpenseModel(nameOfExpense: "Tea", amount: 12),
        UPIExpenseModel(nameOfExpense: "Break Fast", amount: 20),
        UPIExpenseModel(nameOfExpense: "Lunch", amount: 60),
        UPIExpenseModel(nameOfExpense: "Tea", amount: 12),
        UPIExpenseModel(nameOfExpense: "Auto", amount: 15),
        UPIExpenseModel(nameOfExpense: "Tea", amount: 24),
        UPIExpenseModel(nameOfExpense: "Mango", amount: 50),
        UPIExpenseModel(nameOfExpense: "Dinner", amount: 50)
    ]
    
    
    var body: some View {
        NavigationStack {
        
            
                List{
                    ForEach(0..<upiExpenses.count) { i in
                        VStack {
                            
                            HStack{
                                VStack{
                                    Text("\(upiExpenses[i].nameOfExpense)")
                                }
                                Spacer()
                                VStack{
                                    Text("Rs. " + "\(upiExpenses[i].amount)")
                                }
                            }
                            
                        }.frame(height: 50)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal) {
                        
                        Text("UPI Expense")
                            .font(.largeTitle)
                        
                    }
                }
                
        }
    }
}

#Preview {
    FirstExpenseView()
}


