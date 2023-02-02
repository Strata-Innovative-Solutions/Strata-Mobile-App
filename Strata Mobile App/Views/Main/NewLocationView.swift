//
//  NewLocationView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/23/23.
//

import SwiftUI

struct NewLocationView: View {
    // added a state variable to allow the sheet to show up first on the screen
    @State private var showAddLocation = false
    var body: some View {
        NavigationView {
            Button("Add location manually") {
                showAddLocation = true
                
            }
                .navigationTitle("New Location")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddLocation) {
            AddLocationview()
        }
    }
}

struct NewLocationView_Previews: PreviewProvider {
    static var previews: some View {
        NewLocationView()
    }
}
