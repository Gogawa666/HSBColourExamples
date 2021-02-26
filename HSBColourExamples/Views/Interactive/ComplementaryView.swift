//
//  ComplementaryView.swift
//  HSBColourExamples
//
//  Created by Russell Gordon on 2021-02-26.
//

import SwiftUI

struct ComplementaryView: View {
    
    @State private var hue: Double = 60.0
    
    // Second hue to form a triad
    var complementary: Hue {
        return Hue(base: hue, offset: 180)
    }

    var body: some View {
        ScrollView {
            
            Text("""
                Complementary colours are directly across from one another on the colour wheel.

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
                Text("Complementary hue:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", complementary.relative))°")
                    .padding(.bottom, 15)
            }
            
            Group {
                Text("Normalized complementary hue:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("\(String(format: "%3.0f", complementary.normalized))°")
                    .padding(.bottom, 15)
            }
            
            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: hue / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))

                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(hue: complementary.normalized / 360.0, saturation: 0.8, brightness: 0.9, opacity: 1.0))
                
            }
            
            Image("Complementary")
                .resizable()
                .scaledToFit()
                .padding(.top, 20)
            
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
