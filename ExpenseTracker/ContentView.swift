//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Sudeepa Pal on 18/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ScrollView(.vertical, showsIndicators: false) {
            HStack(spacing: 10){
                ForEach(0..<4){ index in
                    Text("Item \(index)")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .frame(width: 150, height: 250)
                        .background(.yellow)
                        .cornerRadius(40.0)
                        .onTapGesture {
                            printTheState(num: index)
                        }
                        
                        
                }
            }
        }.frame(maxWidth: 300, maxHeight: .infinity)
        
        
    }
    
    
    func printTheState(num: Int){
        print("The Number is", num)
    }
}

#Preview {
    ContentView()
}



