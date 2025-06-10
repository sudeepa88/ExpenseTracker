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
    
    
    @State private var totalExpense: Int = 0
    
    
    var body: some View {
        NavigationStack {
            List{
                
                ForEach(0..<upiExpenses.count ) { i in
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
                
                Spacer()
                VStack {
                    HStack {
                        Text("Total Expense: ")
                        Spacer()
                        Text("Rs: " + "\(totalExpense)")
                    }.fontWeight(.heavy)
                        .font(.system(.subheadline))
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    
                    Text("UPI Expense")
                        .font(.largeTitle)
                    
                }
            }
            .onAppear {
                var total = 0
                for expense in upiExpenses {
                    total += Int(expense.amount)
                }
                totalExpense = total
            }
            
            HStack{
                Button("Submit"){
                    print("Button Tapped !")
                }.padding(.trailing, 40)
                    .padding(.leading, 40)
                    .padding(.top, 20)
                    .padding(.bottom,20)
                    .background(Color.yellow)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
            }
            .background(Color.blue)
            .padding(.bottom,23)
            

            
        }//Navigation Stack ending
        .ignoresSafeArea(.all, edges: [.bottom, .leading, .trailing])
        

    }
}

#Preview {
    FirstExpenseView()
}






