//
//  PostCard.swift
//  Design Code Demo
//
//  Created by Leone on 11/11/22.
//

import SwiftUI

struct PostCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            // Show the image
            Image("beach")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 10)) // Pass in a rounded rectabgle to clip it
            // Number of likes
            HStack {
                Image("profile-post-icon-heart")
                Text("2,983")
                    .font(.rcaption)
            }
            
            HStack {
                Image("profile-post-icon-comment")
                Text("99,999,999")
                    .font(.rcaption)
            }
             
        }
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard()
    }
}
