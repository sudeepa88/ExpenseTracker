//
//  SimpleGridView.swift
//  ExpenseTracker
//
//  Created by Sudeepa Pal on 02/06/25.
//

import SwiftUI

struct SimpleGridView: View {
    var body: some View {
        ScrollView { // Optional - just in case content overflows
            Grid(horizontalSpacing: 20, verticalSpacing: 20) {
                ForEach(0..<4) { row in
                    GridRow {
                        ForEach(0..<2) { col in
                            let index = row * 2 + col
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.blue)
                                .frame(width: 150, height: 150)
                                .overlay(
                                    Text("Grid \(index)")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                )
                        }
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Simple Grid (Eager)")
    }
}

#Preview {
    NavigationStack {
        SimpleGridView()
    }
}
