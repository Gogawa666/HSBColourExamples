//
//  AnalogousView.swift
//  HSBColourExamples
//
//  Created by Russell Gordon on 2021-02-26.
//

import SwiftUI

struct AnalogousView: View {
    
    @State private var hue: Double = 210.0
    
    // Hue a bit lower than current hue
    var lowerHue: Hue {
        return Hue(base: hue, offset: -30)
    }

    // Hue a bit higher than current hue
    var higherHue: Hue {
        return Hue(base: hue, offset: 30)
    }
    
    var body: some View {
        ScrollView {
            
            Text("""
                Analogous colours are near each other on the colour wheel.

                Try changing the base hue using the slider.
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
                Text("Lower hue, relative:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", lowerHue.relative))°")
                    .padding(.bottom, 15)
            }
            
            Group {
                Text("Lower hue, normalized:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", lowerHue.normalized))°")
                    .padding(.bottom, 15)
            }
            
            Group {
                Text("Higher hue, relative:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", higherHue.relative))°")
                    .padding(.bottom, 15)
            }
            
            Group {
                Text("Higher hue, normalized:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", higherHue.normalized))°")
                    .padding(.bottom, 15)
            }
            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: hue / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))

                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: lowerHue.normalized / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: higherHue.normalized / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))
                
            }
            
            Image("Analogous")
                .resizable()
                .scaledToFit()
                .padding(.top, 20)
            
            Spacer()

        }
        .padding()
        .navigationTitle("Analogous")

    }
    
}

struct AnalogousView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnalogousView()
        }
    }
}
