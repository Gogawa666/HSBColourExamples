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

            Section(header: Text("Basic Examples")) {

                NavigationLink(destination: MonochromaticView()) {
                    
                    SimpleListItemView(title: "Monochromatic colour",
                                       caption: "Varying the hue but no other values.")

                }

                NavigationLink(destination: ComplementaryView()) {
                    
                    SimpleListItemView(title: "Complementary colour",
                                       caption: "Two hues across the colour wheel.")

                }

                NavigationLink(destination: TriadicView()) {
                    
                    SimpleListItemView(title: "Triadic colour",
                                       caption: "Three hues forming a triangle.")

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
