//
//  BrowseView.swift
//  SkyApp
//
//  Created by Alejandro Amezquita on 4/20/22.
//

import SwiftUI

struct BrowseView: View {
    @Binding var showBrowse: Bool
    
    var body: some View {
        NavigationView {
            navigationTitle(Text("Menu: Welcome to Sonified Sky. About: This app was developed by Alejandro Amezquita, Jacob Harris, and Searra Foote. This designed iPhone application will provide an accessible experience for visually impaired learners to explore basic astronomy concepts. Stars: Displayed by Magnitude 1-6 in increments of 1. Siri: Say, Hey Siri, to activate. Example, Hey Siri show me Saturn.Sonification: This is defined as interpreting objects and conveying data by listening to sounds, which can be applied to astronomy to aid astronomers that are visually impaired."))
            .navigationBarItems(trailing:
                Button(action: {
                    self.showBrowse.toggle()
                }) {
                    Text("Done").bold()
                })
    
        }
    }
}
