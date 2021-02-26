//
//  TriadicView.swift
//  HSBColourExamples
//
//  Created by Russell Gordon on 2021-02-26.
//

import SwiftUI

struct TriadicView: View {
    
    @State private var hue: Double = 80.0
    
    // Second hue to form a triad
    var secondHue: Hue {
        return Hue(base: hue, offset: 120)
    }

    // Third hue to form a triad
    var thirdHue: Hue {
        return Hue(base: hue, offset: 240)
    }
    
    var body: some View {
        ScrollView {
            
            Text("""
                Triadic colours form a triangle across the colour wheel.

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
                Text("Second hue, relative:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", secondHue.relative))°")
                    .padding(.bottom, 15)
            }
            
            Group {
                Text("Second hue, normalized:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", secondHue.normalized))°")
                    .padding(.bottom, 15)
            }
            
            Group {
                Text("Third hue, relative:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", thirdHue.relative))°")
                    .padding(.bottom, 15)
            }
            
            Group {
                Text("Third hue, normalized:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", thirdHue.normalized))°")
                    .padding(.bottom, 15)
            }
            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: hue / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))

                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: secondHue.normalized / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: thirdHue.normalized / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))
                
            }
            
            Image("Triadic")
                .resizable()
                .scaledToFit()
                .padding(.top, 20)
            
            Spacer()

        }
        .padding()
        .navigationTitle("Triadic")

    }
    
}

struct TriadicView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TriadicView()
        }
    }
}
