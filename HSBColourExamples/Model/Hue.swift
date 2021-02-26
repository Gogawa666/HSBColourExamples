//
//  Hue.swift
//  HSBColourExamples
//
//  Created by Russell Gordon on 2021-02-26.
//

import Foundation

struct Hue {
    
    // MARK: Stored Properties
    let base: Double
    let offset: Double
    
    // MARK: Computed properties
    
    // The original hue, plus the provided offset
    var relative: Double {
        return base + offset
    }
    
    // A hue equivalent to the relative hue, but normalized to a value between 0 and 360
    var normalized: Double {

        return relative.truncatingRemainder(dividingBy: 360.0)

    }
    
    
}
