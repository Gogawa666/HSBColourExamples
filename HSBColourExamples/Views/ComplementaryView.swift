//
//  ComplementaryView.swift
//  HSBColourExamples
//
//  Created by Russell Gordon on 2021-02-26.
//

import SwiftUI

struct ComplementaryView: View {
    
    @State private var hue: Double = 0.0
    
    // Returns a value directly across the colour wheel from the base hue
    var complementaryHue: Double {
        return hue + 180.0
    }

    // Retruns an equivalent value to complementaryHue, but within the range of 0 to 360 degrees
    // e.g.: 380 degrees is changed to 20 degress
    var normalizedComplementaryHue: Double {
        return (hue + 180.0).truncatingRemainder(dividingBy: 360.0)
    }

    var body: some View {
        ScrollView {
            
            Text("""
                Complementary colours are directly across from one another on the colour wheel.

                Try changing the hue using the slider.
                """)
                .fixedSize(horizontal: false, vertical: true)

            Slider(value: $hue, in: 0...360.0, step: 1.0)
            
            
            Group {
                Text("Base hue:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", hue))°")
                    .padding(.bottom, 15)
            }

            Group {
                Text("Complementary hue:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", complementaryHue))°")
                    .padding(.bottom, 15)
            }
            
            Group {
                Text("Normalized complementary hue:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", normalizedComplementaryHue))°")
                    .padding(.bottom, 15)
            }
            
            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: hue / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))

                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: normalizedComplementaryHue / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))
                
            }
            
            Spacer()

        }
        .padding()
        .navigationTitle("Complementary")

    }
}

struct ComplementaryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ComplementaryView()
        }
    }
}
