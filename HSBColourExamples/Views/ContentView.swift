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

            }
                        
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("HSB Colour")

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
