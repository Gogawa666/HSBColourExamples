//
//  MonochromaticView.swift
//  HSBColourExamples
//
//  Created by Russell Gordon on 2021-02-26.
//

import SwiftUI

struct MonochromaticView: View {
    
    @State private var hue: Double = 0.0
    
    var body: some View {
        ScrollView {
            
            Text("""
                Monochromatic colours have the same hue and saturation, but the brightness is varied.

                Try changing the hue using the slider.
                """)
                // This Text view will respect the proposed horizontal space
                // and take as much vertical space as needed.
                // See: https://fivestars.blog/swiftui/trucated-text.html
                .fixedSize(horizontal: false, vertical: true)

            Slider(value: $hue, in: 0...360.0, step: 1.0)
            
            Text("Hue:")
                .font(.title3)
                .bold()
                .padding(.bottom, 5)
            
            Text("\(String(format: "%3.0f", hue))°")
                .padding(.bottom, 15)

            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    // Color(hue:saturation:brightness:opacity:) expects values between 0.0 and 1.0
                    //
                    // To match the colour model described here:
                    //
                    // https://www.russellgordon.ca/lcs/HSB_Color_Model_Summary_SwiftUI.pdf
                    //
                    // ... we provide values as fractions of 360 or 100 to translate values we can
                    // easily think of into values that the Swift compiler understands.
                    .foregroundColor(Color(hue: hue / 360.0, saturation: 100.0/100.0, brightness: 75.0/100.0, opacity: 100.0/100.0))
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    // If desired, you can do the mental arithmetic for each argument, which saves
                    // on processing required when your program is run.
                    .foregroundColor(Color(hue: hue / 360.0, saturation: 1.0, brightness: 0.50, opacity: 1.0))
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: hue / 360.0, saturation: 1.0, brightness: 0.25, opacity: 1.0))
            }
            
            Spacer()

        }
        .padding()
        .navigationTitle("Monochromatic")

    }
}

struct MonochromaticView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MonochromaticView()
        }
    }
}
