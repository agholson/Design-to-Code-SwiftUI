//
//  MetricCard.swift
//  Design Code Demo
//
//  Created by Leone on 11/6/22.
//

import SwiftUI

struct MetricCard: View {
    
    var number: String
    var icon: String
    var caption: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            // Creates the card itself
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .aspectRatio(1, contentMode: .fit) // Gives it 1:1 aspect ratio
                .shadow(color: Color("drop-shadow-blue"), radius: 4, x: 0, y: 3) // X/Y coordinates make the shadow go to the bottom-right
            
            VStack(alignment:.leading, spacing: 3) {
                Image(icon)
                Spacer()
                Text(number)
                    .font(.metricNumber)
                Text(caption)
                    .font(.metricCaption)
            }
            .padding(10) // Default goes to 20 padding
            
        }
    }
}

struct MetricCard_Previews: PreviewProvider {
    static var previews: some View {
        MetricCard(number: "23,945", icon: "profile-metric-icon-comment", caption: "Total Comments")
    }
}
