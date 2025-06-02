//
//  LazyGridView.swift
//  ExpenseTracker
//
//  Created by Sudeepa Pal on 02/06/25.
//

import SwiftUI

struct LazyGridView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<50) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.green)
                        .frame(height: 150)
                        .overlay(
                            Text("Lazy \(index)")
                                .foregroundColor(.white)
                                .font(.title2)
                        )
        
                        .onAppear {
                            print("Appearing: Lazy \(index)")
                        }
                }
            }
            .padding()
        }
        .navigationTitle("Lazy Grid (LazyVGrid)")
    }
}

#Preview {
    NavigationStack {
        LazyGridView()
    }
}






