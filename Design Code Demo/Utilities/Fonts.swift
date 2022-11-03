//
//  Fonts.swift
//  Design Code Demo
//
//  Created by Leone on 10/30/22.
//

import Foundation
import SwiftUI

/*
 Sets these as the default fonts
 SF Pro Display
 - SFProDisplay-Regular
 - SFProDisplay-Semibold
 - SFProDisplay-Bold
 SF Pro Text
 - SFProText-Regular
 */
extension Font {
    // Override the original title
    public static var title: Font {
        // No need for return keyword, because assumed with a single statement
        Font.custom("SFProDisplay-Bold", size: 28)
    }
    
    public static var subheadline: Font {
        Font.custom("SFProDisplay-Semibold", size: 14)
    }

}
