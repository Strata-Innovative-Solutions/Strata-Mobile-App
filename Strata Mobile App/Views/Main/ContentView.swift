//
//  ContentView.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/17/23.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        
        TabBar()
        
            
                }
            }
        
   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MapViewModel())
    }
}

