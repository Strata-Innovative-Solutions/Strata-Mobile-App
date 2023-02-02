//
//  Strata_Mobile_AppApp.swift
//  Strata Mobile App
//
//  Created by Kelvin Kissi on 1/17/23.
//

import SwiftUI

@main
struct Strata_Mobile_AppApp: App {
    
    @StateObject private var vm = MapViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            
//            MapView()
//                .environmentObject(vm)
        }
        
    }
}

////class AppDelegate: NSObject, UIApplicationDelegate {
////    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
////                // Override point for customization after application launch.
////                Thread.sleep(forTimeInterval: 5.0)
////                return true
////        }
//
//}
