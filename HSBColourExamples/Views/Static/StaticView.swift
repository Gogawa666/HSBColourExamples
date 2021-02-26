//
//  StaticView.swift
//  HSBColourExamples
//
//  Created by Russell Gordon on 2021-02-26.
//

import SwiftUI

struct StaticView: View {
    
    var body: some View {
        ScrollView {
            
            Text("""
                The hue-saturation-brightness colour model is predictable and easier to think about than the red-green-blue colour model.

                Below, you can access a static summary of how the HSB colour model works.
                """)
                .fixedSize(horizontal: false, vertical: true)
            
            // View the PDF summary here:
            // 
            // https://www.russellgordon.ca/lcs/HSB_Color_Model_Summary_SwiftUI.pdf
            Link(destination: URL(string: "https://www.russellgordon.ca/lcs/HSB_Color_Model_Summary_SwiftUI.pdf")!) {
                Text("Hue, Saturation, Brightness Colour Model")
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.top, 20)

            Spacer()

        }
        .padding()
        .navigationTitle("Static Example")

    }
}

struct StaticView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StaticView()
        }
    }
}
