//
//  ProfileView.swift
//  Design Code Demo
//
//  Created by Leone on 10/30/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            // Background color
            Color("background-gray")
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Profile Analytics")
                    .font(.title)
                Text("@codewithchris")
                    .font(.subheadline)
                
                Spacer()
                
                Text("Basic Stats")
                    .font(.subheadline)
                
                LazyVGrid(columns: [GridItem], content: <#T##() -> _#>)
                
                Spacer()
                
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
    
