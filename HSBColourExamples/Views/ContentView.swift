//
//  ContentView.swift
//  HSBColourExamples
//
//  Created by Russell Gordon on 2021-02-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {

            Section(header: Text("Static Example")) {

                NavigationLink(destination: StaticView()) {
                    
                    SimpleListItemView(title: "HSB Colour Model Overview",
                                       caption: "How the HSB colour model works, overall.")

                }

            }

            
            Section(header: Text("Interactive Examples")) {

                NavigationLink(destination: MonochromaticView()) {
                    
                    SimpleListItemView(title: "Monochromatic Colour",
                                       caption: "Varying the hue but no other values.")

                }

                NavigationLink(destination: ComplementaryView()) {
                    
                    SimpleListItemView(title: "Complementary Colour",
                                       caption: "Two hues across the colour wheel.")

                }

                NavigationLink(destination: TriadicView()) {
                    
                    SimpleListItemView(title: "Triadic Colour",
                                       caption: "Three hues forming a triangle.")

                }
                
                NavigationLink(destination: AnalogousView()) {
                    
                    SimpleListItemView(title: "Analogous Colour",
                                       caption: "Three hues, close to one another on the wheel.")

                }
            }
                        
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("HSB Colour")

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
