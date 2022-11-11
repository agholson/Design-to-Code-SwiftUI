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
    public static var rtitle: Font {
        // No need for return keyword, because assumed with a single statement
        Font.custom("SFProDisplay-Bold", size: 28)
    }
    
    public static var metricNumber: Font {
        Font.custom("SFProDisplay-Bold", size: 14)
    }
    
    public static var metricCaption = Font.custom("SFProText-Regular", size: 9)
    
    public static var rsubheadline: Font {
        Font.custom("SFProDisplay-Semibold", size: 14)
    }
    
    public static var rcaption: Font {
        Font.custom("SFProDisplay-Semibold", size: 10)
    }

}
