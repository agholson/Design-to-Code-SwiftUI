//
//  MetricCardBar.swift
//  Design Code Demo
//
//  Created by Leone on 11/8/22.
//

import SwiftUI

struct MetricCardBar: View {
    var body: some View {
        ZStack {
            // Backgorund
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .shadow(color: Color("drop-shadow-blue"),
                        radius: 4, x: 0, y:  3)
            
            let colSize = GridItem(.flexible(), spacing: 0)
            
            LazyVGrid(columns: Array.init(repeating: colSize, count: 4)) {
                
                // Make loop to create four VStacks
                ForEach(0..<4) { index in
                    VStack(spacing: 7) {
                        Text("3")
                            .font(.metricNumber)
                        Text("Photos")
                            .font(.metricCaption)
                    }
                }
               
            }
            .padding(.horizontal)
        }
        .frame(height: 56) // Restricts the size to 56
    }
}

struct MetricCardBar_Previews: PreviewProvider {
    static var previews: some View {
        MetricCardBar()
    }
}
