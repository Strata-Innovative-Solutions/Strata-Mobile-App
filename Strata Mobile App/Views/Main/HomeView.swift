//
//  HomeView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/23/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LocationList(locations: Location.all)
            }
            .navigationTitle("My Locations")
            
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
