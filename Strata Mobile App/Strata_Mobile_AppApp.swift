//
//  Strata_Mobile_AppApp.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/17/23.
//

import SwiftUI

@main
struct Strata_Mobile_AppApp: App {
    
    @StateObject var mapViewModel = MapViewModel()
    @StateObject var authentication = Authentication()
    
    @StateObject private var vm = MapViewModel()
    
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                ContentView()
                    .environmentObject(mapViewModel)
                    .environmentObject(authentication)
                
            } else {
                LoginView()
                    .environmentObject(authentication)
            }
            
            
        }
        
    }
}

