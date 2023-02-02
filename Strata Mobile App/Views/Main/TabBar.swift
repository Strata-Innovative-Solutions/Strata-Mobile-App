//
//  TabBar.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/23/23.
//

import SwiftUI
import MapKit

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                    
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                    
                }
            
            NewLocationView()
                .tabItem {
                    Label("New", systemImage: "plus")
                    
                }
            
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                    
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                    
                }
                
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
