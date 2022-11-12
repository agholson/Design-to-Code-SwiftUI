//
//  HashtagCloud.swift
//  Design Code Demo
//
//  Created by Leone on 11/12/22.
//

import SwiftUI
import WrappingStack

struct HashtagCloud: View {
    
    let tags = ["dog", "cat", "unicorn", "dolphin", "dragon", "tiger", "lion", "penguin", "squirrel", "rodent", "snake", "kitten", "puppy"]
    
    var body: some View {
        VStack {
            // Implement special imported wrapping HStack
            WrappingHStack(id: \.self, alignment: .leading, horizontalSpacing: 5, verticalSpacing: 5) {
                ForEach(tags, id: \.self) { tag in
                    // Make a white card for each of the hashtags
                    Text("#\(tag)")
                        .padding(3)
                        .background(.white)
                        .cornerRadius(5) // Applies the corner radius to the white background
                        .font(.rcaption)
                }
            }
        }
    }
}

struct HashtagCloud_Previews: PreviewProvider {
    static var previews: some View {
        
        HashtagCloud()
            .background(Color("background-gray"))
    }
}

