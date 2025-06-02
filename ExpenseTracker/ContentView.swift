//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Sudeepa Pal on 18/05/25.
//

import SwiftUI

struct ContentView: View {
    
    // Define 2 columns for the grid
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<4) { index in
                    
                    if index == 0 {
                        
                        NavigationLink(destination: FirstExpenseView()) {
                            Text("Item \(index)")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .frame(width: 180, height: 250)
                                .background(.yellow)
                                .cornerRadius(40.0)
                        }
                    } else {
                        Text("Item \(index)")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .frame(width: 180, height: 250)
                            .background(.yellow)
                            .cornerRadius(40.0)
                            .onTapGesture {
                                printTheState(num: index)
                            }
                    }
                }
            }
            .padding()
        }
        .frame(width: 400, height: 600)
        
        
    } //Navigation stack
    }

    func printTheState(num: Int){
        print("The Number is", num)
    }
}

#Preview {
    ContentView()
}
