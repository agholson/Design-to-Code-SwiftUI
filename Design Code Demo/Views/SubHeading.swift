//
//  SubHeading.swift
//  Design Code Demo
//
//  Created by Leone on 11/8/22.
//

import SwiftUI

struct SubHeading: View {
    
    var subheadline: String
    // Initialize the caption as an empty string, so that it does not need to be passed in
    var caption: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            // Subheadline goes here
            Text(subheadline)
                .font(.rsubheadline)
            // Caption goes here
            Text(caption)
                .font(.rcaption)
        }
        .padding(.top, 20)
       
            
    }
}

struct SubHeading_Previews: PreviewProvider {
    static var previews: some View {
        SubHeading(subheadline: "Basic Stats", caption: "In the last 30 days")
    }
}
